cask 'rowmote-helper' do
  version '4.1.8'
  sha256 'dce027ba01ef6984e68dfff5de41b954f670b0ff6e44d457d8bc2254d875e614'

  url "http://regularrateandrhythm.com/rowmote-pro/rh/rowmote-helper-#{version}.zip"
  appcast 'http://www.regularrateandrhythm.com/apps/rowmote-pro/rowmote-appcast.xml',
          checkpoint: 'a71f0a24aa505e25ca6b3d4626b138d3bc435986307afd333492df450ee2dc6c'
  name 'Rowmote Helper'
  homepage 'http://regularrateandrhythm.com/apps/rowmote-pro/'

  auto_updates true

  app 'Rowmote Helper.app'
end
