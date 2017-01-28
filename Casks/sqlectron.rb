cask 'sqlectron' do
  version '1.20.0'
  sha256 '95eeea7dc15a8cd251099094fd5218749bad3f57cb5effc1453e8c1eeb38c4f8'

  # github.com/sqlectron/sqlectron-gui was verified as official when first introduced to the cask
  url "https://github.com/sqlectron/sqlectron-gui/releases/download/v#{version}/Sqlectron-#{version}-mac.zip"
  appcast 'https://github.com/sqlectron/sqlectron-gui/releases.atom',
          checkpoint: '5f60be008bc55924d507bb56be8e71f77b01b0f262c891fd3d15f41ee93d7719'
  name 'Sqlectron'
  homepage 'https://sqlectron.github.io/'

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
