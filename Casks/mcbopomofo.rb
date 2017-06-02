cask 'mcbopomofo' do
  version '0.9.8'
  sha256 '2d29b07a90d76a24558442bde9df0b922a307106d5ae5a5fde77698f134d2d6d'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/openvanilla/McBopomofo/releases/download/#{version}/McBopomofo-Installer-#{version}.zip"
  appcast 'https://github.com/openvanilla/McBopomofo/releases.atom',
          checkpoint: '3589b9e4636ba8607d1717f7b0d6f1e24270ae9d3176f1c0b6d5b1ea15102d56'
  name 'McBopomofo'
  homepage 'https://mcbopomofo.openvanilla.org/'

  installer manual: 'McBopomofoInstaller.app'

  uninstall delete: '~/Library/Input Methods/McBopomofo.app'
end
