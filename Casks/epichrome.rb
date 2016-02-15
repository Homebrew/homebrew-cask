cask 'epichrome' do
  version '2.1.10'
  sha256 'd8954ac279579d8eaf54b6b9c29f55a362dfe29315b3d6e99c46ad6beb99cf10'

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.dmg"
  appcast 'https://github.com/dmarmor/epichrome/releases.atom',
          checkpoint: '9e8ca793a80d1c6300393a8b925944afa2cab737729c988536e8a8dcaa08aea9'
  name 'Epichrome'
  homepage 'https://github.com/dmarmor/epichrome'
  license :gpl

  app 'Epichrome.app'
end
