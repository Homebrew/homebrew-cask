cask 'ghost' do
  version '0.5.1'
  sha256 '2095b5d9f3826af3a9f5782e2fde4d10ab904c91ce6ae2157db1c2a6931e23c9'

  # github.com/TryGhost/Ghost-Desktop was verified as official when first introduced to the cask
  url "https://github.com/TryGhost/Ghost-Desktop/releases/download/v#{version}/ghost-desktop-#{version}-osx.zip"
  appcast 'https://github.com/TryGhost/Ghost-Desktop/releases.atom',
          checkpoint: '73521985943f770ecaf5c6f87ddcb2e81feeaab3a251be29763ed06472a94336'
  name 'Ghost Desktop'
  homepage 'https://ghost.org/downloads'
  license :mit

  app "ghost-#{version}-SIGNED/Ghost.app"
end
