cask 'flinto' do
  version '26.2.3'
  sha256 '8fbadb660a4185c29166caa82371dd9bee4c6779820a7d13c08c60ea6ae7b348'

  url "https://www.flinto.com/assets/Flinto-#{version}.dmg"
  appcast 'https://www.flinto.com/appcast.rss'
  name 'Flinto'
  homepage 'https://www.flinto.com/mac'

  depends_on macos: '>= :sierra'

  app 'Flinto.app'

  uninstall pkgutil: 'com.flinto.*'

  zap trash: '~/Library/Application Scripts/com.flinto.Flinto'
end
