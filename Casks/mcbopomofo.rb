cask 'mcbopomofo' do
  version '0.9.10'
  sha256 '98b34a121cd6a13acdc2ebcc83af7e9c069e01bd680a76c1f1fa1add2e051556'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/openvanilla/McBopomofo/releases/download/#{version}/McBopomofo-Installer-#{version}.zip"
  appcast 'https://github.com/openvanilla/McBopomofo/releases.atom'
  name 'McBopomofo'
  homepage 'https://mcbopomofo.openvanilla.org/'

  installer manual: 'McBopomofoInstaller.app'

  uninstall delete: '~/Library/Input Methods/McBopomofo.app'
end
