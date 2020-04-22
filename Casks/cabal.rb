cask 'cabal' do
  version '5.0.2'
  sha256 'a9672daf7b5137513ab959a85bfc345fa52ffd76529b4f329a95a64af643ffc1'

  # github.com/cabal-club/cabal-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/cabal-club/cabal-desktop/releases/download/v#{version}/cabal-desktop-#{version}-mac.dmg"
  appcast 'https://github.com/cabal-club/cabal-desktop/releases.atom'
  name 'Cabal'
  homepage 'https://cabal.chat/'

  app 'Cabal.app'
end
