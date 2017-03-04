cask 'gqrx' do
  version '2.6-1'
  sha256 '3622b2e4f744afc21e1894f3c6b509d53c05072334934cad645b7cdd4cf9c76b'

  # github.com/csete/gqrx was verified as official when first introduced to the cask
  url "https://github.com/csete/gqrx/releases/download/v#{version.major_minor}/Gqrx-#{version}.dmg"
  appcast 'https://github.com/csete/gqrx/releases.atom',
          checkpoint: '8a99dcbea1f93b049a49791a1d57ded257eb9e340bea070c144af1bfda2784ca'
  name 'Gqrx'
  homepage 'http://gqrx.dk/'

  app 'Gqrx.app'
end
