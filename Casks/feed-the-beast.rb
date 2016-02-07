cask 'feed-the-beast' do
  version :latest
  sha256 :no_check

  # cursecdn.com is the official download host per the vendor homepage
  url 'http://ftb.cursecdn.com/FTB2/launcher/FTB_Launcher.zip'
  name 'Feed the Beast'
  homepage 'http://www.feed-the-beast.com/'
  license :apache

  app 'Feed The Beast.app'

  caveats do
    depends_on_java
  end
end
