cask 'icanhazshortcut' do
  version '1.0.0'
  sha256 '0f5632865321eb5c56787c9c3d7a10b9613db1e8bae71081590283a69aaab138'

  url "https://github.com/deseven/icanhazshortcut/releases/download/#{version}/ichs.dmg"
  appcast 'https://github.com/deseven/icanhazshortcut/releases.atom'
  name 'iCanHazShortcut'
  homepage 'https://github.com/deseven/icanhazshortcut/'

  app 'iCanHazShortcut.app'

  uninstall quit: 'info.deseven.icanhazshortcut'

  zap trash: '~/Library/Preference/info.deseven.icanhazshortcut'
end
