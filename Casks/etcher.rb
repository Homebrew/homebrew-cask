cask 'etcher' do
  version '1.1.0'
  sha256 'a53d35d342e2c1b0e7236c4c5581565eadba9d7ad517f28c6849df49e8a740e2'

  # github.com/resin-io/etcher/releases/download was verified as official when first introduced to the cask
  url "https://github.com/resin-io/etcher/releases/download/v#{version}/Etcher-#{version}-darwin-x64.dmg"
  appcast 'https://github.com/resin-io/etcher/releases.atom',
          checkpoint: 'f88ff67e8ebd30e6a25b03a727d1caeb5d77969953c99af0a36141d79f8a5b21'
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
