cask 'etcher' do
  version '1.4.3'
  sha256 'a13792e06f82ad8b1ed0dcf25d2f8cfaf335628512a4483dbf34a5dc602eeadf'

  # github.com/resin-io/etcher/releases/download was verified as official when first introduced to the cask
  url "https://github.com/resin-io/etcher/releases/download/v#{version}/Etcher-#{version}.dmg"
  appcast 'https://github.com/resin-io/etcher/releases.atom',
          checkpoint: '4e63969ab9821eccd300d41697ce7c6445456a482dcbda07fd60183a5833f1ba'
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
