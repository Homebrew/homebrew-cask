cask 'feed-the-beast' do
  version :latest
  sha256 :no_check

  # ftb.cursecdn.com was verified as official when first introduced to the cask
  url 'https://ftb.cursecdn.com/FTB2/launcher/FTB_Launcher.zip'
  name 'Feed the Beast'
  homepage 'https://www.feed-the-beast.com/'

  auto_updates true

  app 'Feed The Beast.app'

  zap trash: '~/Library/Application Support/ftblauncher'

  caveats do
    depends_on_java
  end
end
