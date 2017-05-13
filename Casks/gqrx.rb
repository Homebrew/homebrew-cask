cask 'gqrx' do
  version '2.6-1'
  sha256 '3622b2e4f744afc21e1894f3c6b509d53c05072334934cad645b7cdd4cf9c76b'

  # github.com/csete/gqrx was verified as official when first introduced to the cask
  url "https://github.com/csete/gqrx/releases/download/v#{version.major_minor}/Gqrx-#{version}.dmg"
  appcast 'https://github.com/csete/gqrx/releases.atom',
          checkpoint: '868109cceeb9e6551defa48fc6959e619e5ff98a23e63e65b3cbcfc30d1d4e6f'
  name 'Gqrx'
  homepage 'http://gqrx.dk/'

  app 'Gqrx.app'
end
