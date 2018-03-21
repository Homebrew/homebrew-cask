cask 'etcher' do
  version '1.3.1'
  sha256 'c5609c7e9aaa4d8d28b45f6758ad5b9711ec1eeae9f752a6f64413bc1e97016a'

  # github.com/resin-io/etcher/releases/download was verified as official when first introduced to the cask
  url "https://github.com/resin-io/etcher/releases/download/v#{version}/Etcher-#{version}.dmg"
  appcast 'https://github.com/resin-io/etcher/releases.atom',
          checkpoint: '1d20d1b2b191d122b08196b0d125bf26e57e3f8336ccedbb1fa097f8f529f4ea'
  name 'Etcher'
  homepage 'https://etcher.io/'

  app 'Etcher.app'

  zap trash: [
               '~/Library/Application Support/etcher',
               '~/Library/Preferences/io.resin.etcher.helper.plist',
               '~/Library/Preferences/io.resin.etcher.plist',
               '~/Library/Saved Application State/io.resin.etcher.savedState',
             ]
end
