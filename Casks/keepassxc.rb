cask 'keepassxc' do
  version '2.2.0'
  sha256 'd5dec4a01b0fa00f36ebbd8d001ad24a1559d7f897af3d9a2fbdb339b02086bc'

  # github.com/keepassxreboot/keepassxc was verified as official when first introduced to the cask
  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}.dmg"
  appcast 'https://github.com/keepassxreboot/keepassxc/releases.atom',
          checkpoint: 'd709325c49fcc967527a65307a5eed8fbf23eed279dc2e3cef1adb04f59c4258'
  name 'KeePassXC'
  homepage 'https://keepassxc.org/'

  app 'KeePassXC.app'

  zap delete: '~/.keepassxc'
end
