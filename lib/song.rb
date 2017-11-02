require "pry"

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre

  end

  def self.count
    @@count
  end

#  def self.artists
#    artists = []
#    @@artists.each { |artist| artists << artist unless artists.include?(artist) }
#    artists
#  end

  def self.artists
    @@artists.collect { |artist| artist unless self.include?(artist) }
  end

  def self.genres
    genres = []
    @@genres.each { |genre| genres << genre unless genres.include?(genre) }
    genres
  end

end
