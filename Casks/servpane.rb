cask 'servpane' do
  version '0.1.1'
  sha256 '07f37334bc723d4aefa81411e604d4a20306d89b1553500b8acc715ee503f314'

  url "https://github.com/aderyabin/ServPane/releases/download/v#{version}/ServPane-#{version}.dmg"
  appcast 'https://github.com/aderyabin/ServPane/releases.atom',
          checkpoint: 'dd770ae99c8dc3d958909fdf195d848ad28afd6a5521fc59033c85f779b85089'
  name 'ServPane'
  homepage 'https://github.com/aderyabin/ServPane'

  app 'ServPane.app'
end
