cask 'flinto' do
  version '27.0'
  sha256 '5e2492aa948aa65803d76664391d04a9e8eeec2df93946cb0c514ceb4cc480e5'

  url "https://www.flinto.com/assets/Flinto-#{version}.dmg"
  appcast 'https://www.flinto.com/appcast.rss'
  name 'Flinto'
  homepage 'https://www.flinto.com/mac'

  depends_on macos: '>= :high_sierra'

  app 'Flinto.app'

  uninstall pkgutil: 'com.flinto.*'

  zap trash: '~/Library/Application Scripts/com.flinto.Flinto'
end
