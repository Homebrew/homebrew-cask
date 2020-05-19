cask 'abstract' do
  version '92.1.0'
  sha256 '5e3f2ffd2e9e5dc9b76c688a2d0950b5268a0dbbb45edef5be372eaef1f98d31'

  url "https://downloads.goabstract.com/mac/Abstract-#{version}.dmg"
  appcast 'https://www.goabstract.com/release-notes/'
  name 'Abstract'
  homepage 'https://www.goabstract.com/'

  auto_updates true

  app 'Abstract.app'

  zap trash: [
               '~/Library/Application Support/Abstract',
               '~/Library/Caches/com.elasticprojects.abstract-desktop',
               '~/Library/Caches/com.elasticprojects.abstract-desktop.ShipIt',
               '~/Library/Preferences/com.elasticprojects.abstract-desktop.helper.plist',
               '~/Library/Preferences/com.elasticprojects.abstract-desktop.plist',
               '~/Library/Saved Application State/com.elasticprojects.abstract-desktop.savedState',
             ]
end
