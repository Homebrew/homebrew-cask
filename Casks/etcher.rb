cask 'etcher' do
  version '1.0.0-rc.2'
  sha256 'c5e40463a728df61cfc0f351a179f22e5468af829321fa8c55a8ec071db0ce91'

  # resin-production-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://resin-production-downloads.s3.amazonaws.com/etcher/#{version}/Etcher-#{version}-darwin-x64.dmg"
  appcast 'https://github.com/resin-io/etcher/releases.atom',
          checkpoint: '99a96bc2569337690652c28b7cd055f14f2f0ce7158f6f4e464412e190da7a15'
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
