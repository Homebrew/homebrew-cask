cask :v1 => 'ftb-launcher' do
  version :latest
  sha256 :no_check

  url 'http://ftb.cursecdn.com/FTB2/launcher/FTB_Launcher.zip'
  name 'Feed the Beast Launcher'
  homepage 'http://www.feed-the-beast.com/'
  license :apache

  app 'Feed The Beast.app'
end
