cask 'itunes-producer' do
  if MacOS.version <= :mavericks
    version '2.9.1'

    url "https://itunesconnect.apple.com/itunesproducer/iTunesProducer_#{version}.dmg"
    sha256 '3e14f399e350f31e4b0e3c1833ef4bb0102912f67096440bd572b00a7f008257'
  else
    version '3.1.1'

    url "https://itunesconnect.apple.com/downloads/Software/iTunesProducer/iTunesProducer_#{version}.dmg"
    sha256 '0d98071c7354aab510d95bd8ad961814b773285c1a4faab9fbf33df7230f66f6'
  end

  name 'iTunes Producer'
  homepage 'https://itunesconnect.apple.com/WebObjects/iTunesConnect.woa/ra/ng/resources_page'

  pkg 'iTunesProducer.pkg'

  uninstall pkgutil: 'com.apple.pkg.iTunesProducer'
end
