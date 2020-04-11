cask 'cabal' do
  version '5.0.0'
  sha256 '897ddafb13ca78488490ac572b2da0400a5084d5a4a19efa21e22e82526c02ef'

  # github.com/cabal-club/cabal-desktop was verified as official when first introduced to the cask
  url "https://github.com/cabal-club/cabal-desktop/releases/download/v#{version}/cabal-desktop-#{version}-mac.dmg"
  appcast 'https://github.com/cabal-club/cabal-desktop/releases.atom'
  name 'Cabal'
  homepage 'https://cabal.chat/'

  app 'Cabal.app'
end
