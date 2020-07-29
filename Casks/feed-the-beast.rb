cask 'feed-the-beast' do
  version '1.0.9'
  sha256 '67e9877f8eead9429af293c2505f48d55904bbc05b9b0962099c942776e42f48'

  # apps.modpacks.ch/FTBApp was verified as official when first introduced to the cask
  url "https://apps.modpacks.ch/FTBApp/release/#{version}/FTBA_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.feed-the-beast.com/app_release.xml'
  name 'Feed the Beast'
  homepage 'https://www.feed-the-beast.com/'

  app 'FTBApp.app'

  zap trash: '~/Library/Application Support/ftblauncher'

  caveats do
    depends_on_java
  end
end
