cask 'itunes-producer' do
  if MacOS.version <= :mavericks
    version '2.9.1'

    url "https://itunesconnect.apple.com/itunesproducer/iTunesProducer_#{version}.dmg"
    sha256 '3e14f399e350f31e4b0e3c1833ef4bb0102912f67096440bd572b00a7f008257'
  else
    version '3.1.2'

    url "https://itunespartner.apple.com/assets/downloads/iTunesProducer_#{version}.dmg"
    appcast 'https://itunespartner.apple.com/en/music/tools'
    sha256 '553a99b08ae34635ed777278fea7c3037e178ad3f7700d57914eec0fb8892435'
  end

  name 'iTunes Producer'
  homepage 'https://itunesconnect.apple.com/WebObjects/iTunesConnect.woa/ra/ng/resources_page'

  pkg 'iTunesProducer.pkg'

  uninstall pkgutil: 'com.apple.pkg.iTunesProducer'
end
