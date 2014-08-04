class Chirp < Cask
  version '0.4.0'
  sha256 '76842b583f0dbb19cd700a156893b0cd1356dde18bbe730261fdf786772a26f0'

  url "http://chirp.danplanet.com/download/#{version}/chirp-#{version}.app.zip"
  homepage 'http://chirp.danplanet.com/'

  link "chirp-#{version}.app"
end
