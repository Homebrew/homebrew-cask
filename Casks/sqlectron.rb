cask 'sqlectron' do
  version '1.26.0'
  sha256 '2bf1f80f52f4523618b09e9d0c4ef3bf2995afeefbd5d67c1cf012589c80f440'

  # github.com/sqlectron/sqlectron-gui was verified as official when first introduced to the cask
  url "https://github.com/sqlectron/sqlectron-gui/releases/download/v#{version}/Sqlectron-#{version}-mac.zip"
  appcast 'https://github.com/sqlectron/sqlectron-gui/releases.atom',
          checkpoint: '8f6025f9d2ab79728bb94ced4f595ec27eeddfe1a1e16d9dc1e5f680d14e3e5f'
  name 'Sqlectron'
  homepage 'https://sqlectron.github.io/'

  depends_on macos: '>= :mountain_lion'

  app 'Sqlectron.app'

  zap trash: [
               '~/.sqlectron.json',
               '~/Library/Application Support/Sqlectron',
             ]
end
