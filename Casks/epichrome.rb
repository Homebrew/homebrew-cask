cask 'epichrome' do
  version '2.1.9'
  sha256 'd4ebaf25136cf1890f589cad8755be66d344e21b61ea22dc0c2be575226fc598'

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.dmg"
  appcast 'https://github.com/dmarmor/epichrome/releases.atom',
          checkpoint: '2182b6dae7fb46b8fa633918bc7b53e145fc559d9fc19c2b0fb258fb6a85cff5'
  name 'Epichrome'
  homepage 'https://github.com/dmarmor/epichrome'
  license :gpl

  app 'Epichrome.app'
end
