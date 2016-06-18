cask 'sqlectron' do
  version '1.10.0'
  sha256 'f061b24756f94dd605e4166eceadc92c9bc4d9a3dac737853abed8a3983b1eeb'

  # github.com/sqlectron/sqlectron-gui was verified as official when first introduced to the cask
  url "https://github.com/sqlectron/sqlectron-gui/releases/download/v#{version}/Sqlectron-#{version}-mac.zip"
  appcast 'https://github.com/sqlectron/sqlectron-gui/releases.atom',
          checkpoint: '3a42e9c8a81501505f8fe3c714b0b89768c1dd89dfcc323bce44968b68658fdc'
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
