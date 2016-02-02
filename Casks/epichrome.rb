cask 'epichrome' do
  version '2.1.9'
  sha256 'd4ebaf25136cf1890f589cad8755be66d344e21b61ea22dc0c2be575226fc598'

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.dmg"
  appcast 'https://github.com/dmarmor/epichrome/releases.atom',
          checkpoint: 'f86bbf062d2fcda8e7b065b17899fab18bc1d3bfdc7969d6a07cc3872fbff88e'
  name 'Epichrome'
  homepage 'https://github.com/dmarmor/epichrome'
  license :gpl

  app 'Epichrome.app'
end
