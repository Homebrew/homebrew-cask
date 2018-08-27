cask 'icanhazshortcut' do
  version '0.8.2'
  sha256 '8106a6c6d073065898fd1122eb25a8184d984ac1a4f1042779befb0160e692e2'

  url "https://github.com/deseven/icanhazshortcut/releases/download/#{version}/ichs.dmg"
  appcast 'https://github.com/deseven/icanhazshortcut/releases.atom'
  name 'iCanHazShortcut'
  homepage 'https://github.com/deseven/icanhazshortcut/'

  app 'iCanHazShortcut.app'

  uninstall quit: 'info.deseven.icanhazshortcut'

  zap trash: '~/Library/Preference/info.deseven.icanhazshortcut'
end
