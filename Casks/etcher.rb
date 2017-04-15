cask 'etcher' do
  version '1.0.0-rc.3'
  sha256 '7c6518a1227c338d9f084814d7f374bd8d6ec728e05eb55041c4bad7e95e04e8'

  # resin-production-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://resin-production-downloads.s3.amazonaws.com/etcher/#{version}/Etcher-#{version}-darwin-x64.dmg"
  appcast 'https://github.com/resin-io/etcher/releases.atom',
          checkpoint: '732ab3eb53bc08c9ff44c6a59bee18a068c9cd449fb7d626613aadcb4744bf6d'
  name 'Etcher'
  homepage 'https://etcher.io/'

  app 'Etcher.app'

  zap delete: [
                '~/Library/Application Support/etcher',
                '~/Library/Preferences/io.resin.etcher.helper.plist',
                '~/Library/Preferences/io.resin.etcher.plist',
                '~/Library/Saved Application State/io.resin.etcher.savedState',
              ]
end
