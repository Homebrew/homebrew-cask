cask 'feed-the-beast' do
  version :latest
  sha256 :no_check

  # dist.creeper.host/FTB2/ was verified as official when first introduced to the cask
  url 'https://dist.creeper.host/FTB2/launcher/FTB_Launcher.zip'
  name 'Feed the Beast'
  homepage 'https://www.feed-the-beast.com/'

  app 'Feed The Beast.app'

  zap trash: '~/Library/Application Support/ftblauncher'

  caveats do
    depends_on_java
  end
end
