cask 'abstract' do
  version '93.0.1'
  sha256 'eab24f29fbefdd55961b933dbe6c057513714b4ae0e32db5ec9bc340e0800071'

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
