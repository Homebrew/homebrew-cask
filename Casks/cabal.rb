cask 'cabal' do
  version '4.1.0'
  sha256 '189a8e1569fcdbca626e941acd3f0b03548f3586e3bff66d538ff769b6930849'

  # github.com/cabal-club/cabal-desktop was verified as official when first introduced to the cask
  url "https://github.com/cabal-club/cabal-desktop/releases/download/v#{version}/cabal-desktop-#{version}-mac.dmg"
  appcast 'https://github.com/cabal-club/cabal-desktop/releases.atom'
  name 'Cabal'
  homepage 'https://cabal.chat/'

  app 'Cabal.app'
end
