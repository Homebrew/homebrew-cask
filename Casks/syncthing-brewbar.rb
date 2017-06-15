cask 'syncthing-brewbar' do
  version 'beta2'
  sha256 '2de80de8c031e5f3541a16a419d8888ae038a3220f2e820a4e0fc64c6e625311'

  url "https://github.com/jonashoechst/syncthing-brew-gui/releases/download/#{version}/Syncthing-BrewBar.zip"
  name 'Syncthing BrewBar'
  homepage 'https://github.com/jonashoechst/Syncthing-BrewBar'

  depends_on formula: 'syncthing'

  app 'Syncthing BrewBar.app'
end
