cask 'cabal' do
  version '4.1.1'
  sha256 '9b0c959135674663839cc0b80533a7a94603dda8977f817fa954e4d1ca5e40d3'

  # github.com/cabal-club/cabal-desktop was verified as official when first introduced to the cask
  url "https://github.com/cabal-club/cabal-desktop/releases/download/v#{version}/cabal-desktop-#{version}-mac.dmg"
  appcast 'https://github.com/cabal-club/cabal-desktop/releases.atom'
  name 'Cabal'
  homepage 'https://cabal.chat/'

  app 'Cabal.app'
end
