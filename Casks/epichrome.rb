cask 'epichrome' do
  version '2.2.3'
  sha256 'a0fd3ccfd6f08833d3d4c2f1413cc7a7191e53af59c5e23b59d8c75f0c615628'

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.dmg"
  appcast 'https://github.com/dmarmor/epichrome/releases.atom'
  name 'Epichrome'
  homepage 'https://github.com/dmarmor/epichrome'

  app 'Epichrome.app'
end
