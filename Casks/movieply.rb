cask 'movieply' do
  version '1.2'
  sha256 '083d15a07f8702e1216f5ec39ee1879d1459e307a6ee7ae223651fed856dae93'

  url "http://www.movieply.com/download/MoviePly-#{version}.OSX.zip"
  name 'MoviePly'
  homepage 'http://www.movieply.com/'

  app 'MoviePly.app'
end
