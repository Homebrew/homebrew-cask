cask 'makerbot-desktop' do
  version '3.10.0.1725'
  sha256 '9579eeb71daec6cf7e13bbc69f0bc7a954ab65ff9ee82e0fd03121226a21629e'

  url "https://downloads.makerbot.com/makerware/MakerBot%20Bundle%20BETA%20#{version}.dmg"
  name 'MakerBot Desktop'
  homepage 'https://www.makerbot.com/download-desktop/'

  pkg "MakerBot Bundle BETA #{version}.pkg"

  uninstall pkgutil: 'com.makerbot.*'
end
