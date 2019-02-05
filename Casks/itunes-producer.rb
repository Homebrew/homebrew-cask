cask 'itunes-producer' do
  version '3.1.1'
  sha256 '0d98071c7354aab510d95bd8ad961814b773285c1a4faab9fbf33df7230f66f6'

  url "https://itunesconnect.apple.com/downloads/Software/iTunesProducer/iTunesProducer_#{version}.dmg"

  name 'iTunes Producer'
  homepage 'https://itunesconnect.apple.com/WebObjects/iTunesConnect.woa/ra/ng/resources_page'

  pkg 'iTunesProducer.pkg'

  uninstall pkgutil: 'com.apple.pkg.iTunesProducer'
end
