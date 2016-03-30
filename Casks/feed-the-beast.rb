cask 'feed-the-beast' do
  version :latest
  sha256 :no_check

  # ftb.cursecdn.com was verified as official when first introduced to the cask
  url 'http://ftb.cursecdn.com/FTB2/launcher/FTB_Launcher.zip'
  name 'Feed the Beast'
  homepage 'http://www.feed-the-beast.com/'
  license :apache

  app 'Feed The Beast.app'

  caveats do
    depends_on_java
  end
end
