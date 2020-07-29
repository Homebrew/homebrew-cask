cask 'itunes-producer' do
  version '3.1.2'
  sha256 '553a99b08ae34635ed777278fea7c3037e178ad3f7700d57914eec0fb8892435'

  url "https://itunespartner.apple.com/assets/downloads/iTunesProducer_#{version}.dmg"
  appcast 'https://itunespartner.apple.com/en/music/tools'
  name 'iTunes Producer'
  homepage 'https://itunesconnect.apple.com/WebObjects/iTunesConnect.woa/ra/ng/resources_page'

  pkg 'iTunesProducer.pkg'

  uninstall pkgutil: 'com.apple.pkg.iTunesProducer'
end
