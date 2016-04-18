cask 'sqlectron' do
  version '1.6.1'
  sha256 '1eb4ed03b6add6ba34749d34bf786d0abc5f9867bfaa7be9fbadc0b5db245dcc'

  # github.com/sqlectron/sqlectron-gui was verified as official when first introduced to the cask
  url "https://github.com/sqlectron/sqlectron-gui/releases/download/v#{version}/Sqlectron-#{version}-mac.zip"
  appcast 'https://github.com/sqlectron/sqlectron-gui/releases.atom',
          checkpoint: 'fe52c6cf05144ef4b470cf423e51826ad133cf4ba78f3a901457d10a7c2efdaf'
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
