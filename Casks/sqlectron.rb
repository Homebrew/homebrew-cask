cask 'sqlectron' do
  version '1.15.0'
  sha256 '1516637e35ce3be23a6e7e6ecbd2dafd744ead7615ff4aad5a76e9809b605f77'

  # github.com/sqlectron/sqlectron-gui was verified as official when first introduced to the cask
  url "https://github.com/sqlectron/sqlectron-gui/releases/download/v#{version}/Sqlectron-#{version}-mac.zip"
  appcast 'https://github.com/sqlectron/sqlectron-gui/releases.atom',
          checkpoint: '9ef052edf021c2550dfff3d26079d9276035bb7ae605bb16c615ca0b5dd0407e'
  name 'Sqlectron'
  homepage 'https://sqlectron.github.io/'
  license :mit

  depends_on macos: '>= :mountain_lion'

  app 'Sqlectron.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/.sqlectron.json',
                '~/Library/Application Support/Sqlectron',
              ]
end
