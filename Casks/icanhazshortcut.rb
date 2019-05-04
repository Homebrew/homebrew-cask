cask 'icanhazshortcut' do
  version '1.1.0'
  sha256 'f82fce672409edf3147c60df383ae7e293eadd96a224054194af5d98f042673c'

  url "https://github.com/deseven/icanhazshortcut/releases/download/#{version}/ichs.dmg"
  appcast 'https://github.com/deseven/icanhazshortcut/releases.atom'
  name 'iCanHazShortcut'
  homepage 'https://github.com/deseven/icanhazshortcut/'

  app 'iCanHazShortcut.app'

  uninstall quit: 'info.deseven.icanhazshortcut'

  zap trash: '~/Library/Preference/info.deseven.icanhazshortcut'
end
