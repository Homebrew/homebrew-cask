cask 'ndm' do
  version '0.1.2'
  sha256 'b04b5646ab8192d8a2ca279d11b3fdf4b82854f25a550127630124da85956398'

  # github.com/720kb/ndm was verified as official when first introduced to the cask
  url "https://github.com/720kb/ndm/releases/download/v#{version}/ndm-#{version}.dmg"
  appcast 'https://github.com/720kb/ndm/releases.atom',
          checkpoint: '12439fc6deea15e6fc49647ba274fb7d517751ea73d6b406edb558d6804cdb81'
  name 'ndm'
  homepage 'https://720kb.github.io/ndm/'

  app 'ndm.app'
end
