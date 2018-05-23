cask 'etcher' do
  version '1.4.4'
  sha256 'b09f9352d69741ffbef9d99afbfd3db0230e2e9fe93f37723fe5028005df7a5e'

  # github.com/resin-io/etcher/releases/download was verified as official when first introduced to the cask
  url "https://github.com/resin-io/etcher/releases/download/v#{version}/Etcher-#{version}.dmg"
  appcast 'https://github.com/resin-io/etcher/releases.atom',
          checkpoint: 'ad732fe09130bbb97d0e083bd8e081e8d8e63ac910bbfbbfda94a0031497728c'
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
