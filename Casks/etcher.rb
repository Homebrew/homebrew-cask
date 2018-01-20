cask 'etcher' do
  version '1.2.1'
  sha256 'a4faf8de586dd7f3233e599f3a64a6fbfab8c09087b53af4f3084079beda18c2'

  # github.com/resin-io/etcher/releases/download was verified as official when first introduced to the cask
  url "https://github.com/resin-io/etcher/releases/download/v#{version}/Etcher-#{version}.dmg"
  appcast 'https://github.com/resin-io/etcher/releases.atom',
          checkpoint: '92185e78bfdf5bfc84e81c2fbebc2272a7feb50e07d6e5285adcbb65a0151fb2'
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
