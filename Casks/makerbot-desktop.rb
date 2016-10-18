cask 'makerbot-desktop' do
  version '3.9.1.1346'
  sha256 '3ab82fcf397d1fe2ea9781054a47f85a96899f7362946a475bba5312c4a54970'

  url "https://downloads.makerbot.com/makerware/MakerBot%20Bundle%20BETA%20#{version}.dmg"
  name 'MakerBot Desktop'
  homepage 'https://www.makerbot.com/desktop'

  pkg "MakerBot Bundle BETA #{version}.pkg"

  uninstall pkgutil: 'com.makerbot.*'
end
