cask 'cabal' do
  version '6.0.2'
  sha256 '566cf76a2ee231fa69a49c4b73f715101a8cfcd514d5bb8b7dee143f1a7a1ed7'

  # github.com/cabal-club/cabal-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/cabal-club/cabal-desktop/releases/download/v#{version}/cabal-desktop-#{version}-mac.dmg"
  appcast 'https://github.com/cabal-club/cabal-desktop/releases.atom'
  name 'Cabal'
  homepage 'https://cabal.chat/'

  app 'Cabal.app'
end
