cask 'exodus' do
  version '1.29.1'
  sha256 '23dce14070b510f29c7cdfe9d126225b1c6998b7423e22e8ab7244c9969decb1'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/Exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '23852ab775a6084ac6c9a2656dbf2ada60435af69d8958caa18d49c2e9ce3ba1'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
