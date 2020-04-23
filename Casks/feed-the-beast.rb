cask 'feed-the-beast' do
  version '1.0.8'
  sha256 'b03fe156f41b202b72c6ad554ecdfa7c77f503abf665a12e6acdeaabaef3f88d'

  # apps.modpacks.ch/FTBApp was verified as official when first introduced to the cask
  url "https://apps.modpacks.ch/FTBApp/release/#{version}/FTBA_macos_#{version.dots_to_underscores}.dmg"
  name 'Feed the Beast'
  homepage 'https://www.feed-the-beast.com/'

  app 'Feed The Beast.app'

  zap trash: '~/Library/Application Support/ftblauncher'

  caveats do
    depends_on_java
  end
end
