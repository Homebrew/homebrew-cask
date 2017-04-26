cask 'etcher' do
  version '1.0.0-rc.4'
  sha256 'a8404e1297578f00e726b7ef08a17c3440aa4861bed8e6f295bff7cb8d9997dd'

  # resin-production-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://resin-production-downloads.s3.amazonaws.com/etcher/#{version}/Etcher-#{version}-darwin-x64.dmg"
  appcast 'https://github.com/resin-io/etcher/releases.atom',
          checkpoint: 'e1caafd5c5f64d21d0009dc9c11e2402f8068ef0f56cb1264638d21a2d427ac4'
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
