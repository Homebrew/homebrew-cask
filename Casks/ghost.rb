cask 'ghost' do
  version '0.7.0'
  sha256 'a49590682fce3c771492ff14e49ce882a2d3c343c0f937fc51c442aac63bc5e9'

  # github.com/TryGhost/Ghost-Desktop was verified as official when first introduced to the cask
  url "https://github.com/TryGhost/Ghost-Desktop/releases/download/v#{version}/ghost-desktop-#{version}-osx.zip"
  appcast 'https://github.com/TryGhost/Ghost-Desktop/releases.atom',
          checkpoint: '2916cf8f8f90c96808378749ac90f4b4f76b1dfff1ea68b1a5bafd977b8dfb33'
  name 'Ghost Desktop'
  homepage 'https://ghost.org/downloads'

  app "ghost-#{version}-SIGNED/Ghost.app"
end
