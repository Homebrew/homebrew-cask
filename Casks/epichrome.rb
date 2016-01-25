cask 'epichrome' do
  version '2.1.8'
  sha256 'ebb91f26c71b311354bb92e44c86fa24f3d55a8c75d899cffaef42943508afb8'

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.dmg"
  appcast 'https://github.com/dmarmor/epichrome/releases.atom',
          checkpoint: '2182b6dae7fb46b8fa633918bc7b53e145fc559d9fc19c2b0fb258fb6a85cff5'
  name 'Epichrome'
  homepage 'https://github.com/dmarmor/epichrome'
  license :gpl

  app 'Epichrome.app'
end
