cask 'cabal' do
  version '6.0.3'
  sha256 'a36af1fcab00eb2fc6aa2bff8b009d05047948699ec4dd5f0afb661e61752cda'

  # github.com/cabal-club/cabal-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/cabal-club/cabal-desktop/releases/download/v#{version}/cabal-desktop-#{version}-mac.dmg"
  appcast 'https://github.com/cabal-club/cabal-desktop/releases.atom'
  name 'Cabal'
  homepage 'https://cabal.chat/'

  app 'Cabal.app'
end
