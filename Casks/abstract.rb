cask 'abstract' do
  version '87.0.0'
  sha256 '50c4e650bc3c92544b071429ce265561937ae2486547f624d400569f12c5b836'

  url "https://downloads.goabstract.com/Abstract-#{version}.dmg"
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
