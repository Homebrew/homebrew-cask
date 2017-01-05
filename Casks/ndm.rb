cask 'ndm' do
  version '0.1.0'
  sha256 '3bf4a06f6449f086cb5247664509e833aa18e8e2607333362223b58f433d802d'

  # github.com/720kb/ndm was verified as official when first introduced to the cask
  url "https://github.com/720kb/ndm/releases/download/v#{version}/ndm-#{version}.dmg"
  appcast 'https://github.com/720kb/ndm/releases.atom',
          checkpoint: 'fbb83c6e59f353266ab87e3ec03a4a1fbd744d7a2dff3e76dde389ad806b2646'
  name 'ndm'
  homepage 'https://720kb.github.io/ndm/'

  app 'ndm.app'
end
