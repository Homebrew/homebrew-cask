cask 'mcbopomofo' do
  version '0.9.7'
  sha256 '67781854868a4186e47eb431d0290eff7161f41cdfb7a200d1deb30c379bdcd2'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/openvanilla/McBopomofo/releases/download/#{version}/McBopomofo-Installer-#{version}.zip"
  appcast 'https://github.com/openvanilla/McBopomofo/releases.atom',
          checkpoint: 'd664ecb07c906c48fd9f09a28b29e76413768ddb20f897e5272b73cee27aeccb'
  name 'McBopomofo'
  homepage 'https://mcbopomofo.openvanilla.org/'

  installer manual: 'McBopomofoInstaller.app'

  uninstall delete: '~/Library/Input Methods/McBopomofo.app'
end
