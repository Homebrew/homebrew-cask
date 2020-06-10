cask 'cabal' do
  version '6.0.1'
  sha256 '1f741e42b1bc4787e0a5c50749214b917ef7f6eb3ce5768cc5f5ca4428d8b301'

  # github.com/cabal-club/cabal-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/cabal-club/cabal-desktop/releases/download/v#{version}/cabal-desktop-#{version}-mac.dmg"
  appcast 'https://github.com/cabal-club/cabal-desktop/releases.atom'
  name 'Cabal'
  homepage 'https://cabal.chat/'

  app 'Cabal.app'
end
