cask 'makerbot-desktop' do
  version '3.7.0.148'
  sha256 '1012556c76df6220640606bb1041a6cf6cc28975ffba6b75b653228512b9da91'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/downloads-makerbot-com/makerware/MakerBot%20Bundle%20BETA%20#{version}.dmg"
  name 'MakerBot Desktop'
  homepage 'https://www.makerbot.com/desktop'
  license :gratis

  pkg "MakerBot Bundle BETA #{version}.pkg"

  uninstall pkgutil: 'com.makerbot.*'
end
