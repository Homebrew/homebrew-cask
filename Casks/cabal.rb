cask 'cabal' do
  version '4.0.0'
  sha256 '019f4c89a372dd5f7e3b5c6e8ccedda8e8ae6fa4b7ffa566f527c70f8d30bf60'

  # github.com/cabal-club/cabal-desktop was verified as official when first introduced to the cask
  url "https://github.com/cabal-club/cabal-desktop/releases/download/v#{version}/cabal-desktop-#{version}-mac.dmg"
  appcast 'https://github.com/cabal-club/cabal-desktop/releases.atom'
  name 'Cabal'
  homepage 'https://cabal.chat/'

  app 'Cabal.app'
end
