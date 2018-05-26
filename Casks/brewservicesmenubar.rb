cask 'brewservicesmenubar' do
  version '3.0.0'
  sha256 '13c8401bc212b65d38a4aa96daf7f98f76e27758ac29fc80fb25e21c989b194d'

  url "https://github.com/andrewn/brew-services-menubar/releases/download/v#{version}/BrewServicesMenubar.zip"
  appcast 'https://github.com/andrewn/brew-services-menubar/releases.atom',
          checkpoint: '6a4109caef2580e80804ba86825d5812d1886e1ba87e9f9310fc6b184172d757'
  name 'Brew Services Menubar'
  homepage 'https://github.com/andrewn/brew-services-menubar'

  app 'BrewServicesMenubar.app'

  uninstall quit: 'andrewnicolaou.BrewServicesMenubar'
end
