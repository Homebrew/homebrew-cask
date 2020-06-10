cask 'abstract' do
  version '93.0.0'
  sha256 'a9b0f616e5a8f91145332dd06a7e66745e7445f353a64fd10dbed571c7b583b0'

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
