cask 'icanhazshortcut' do
  version '1.2.0'
  sha256 '39b911e7375ee8073df5680fc869519b8072597ae97ed2e404a3065a69254327'

  url "https://github.com/deseven/icanhazshortcut/releases/download/#{version}/ichs.dmg"
  appcast 'https://github.com/deseven/icanhazshortcut/releases.atom'
  name 'iCanHazShortcut'
  homepage 'https://github.com/deseven/icanhazshortcut/'

  app 'iCanHazShortcut.app'

  uninstall quit: 'info.deseven.icanhazshortcut'

  zap trash: '~/Library/Preference/info.deseven.icanhazshortcut'
end
