cask 'abstract' do
  version '85.1.1'
  sha256 '491cfe75f87f28ca324ebff2405b3d74195b332aa2d4ee3c05bee923978a6351'

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
