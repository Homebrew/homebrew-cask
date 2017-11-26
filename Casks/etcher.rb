cask 'etcher' do
  version '1.2.0'
  sha256 '123a9de08384b91111a4f241d8eb991fe1dfdbf422da4e6ef2f4fc5b1f0db0b7'

  # github.com/resin-io/etcher/releases/download was verified as official when first introduced to the cask
  url "https://github.com/resin-io/etcher/releases/download/v#{version}/Etcher-#{version}.dmg"
  appcast 'https://github.com/resin-io/etcher/releases.atom',
          checkpoint: '73be567126e4a5659b6b43b8324b14c5ca81206e50ce39a5b27b6af4746e430f'
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
