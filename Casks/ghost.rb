cask 'ghost' do
  version '1.5.1'
  sha256 'b49c1775d606a88469b6795104ae193266785f71626624fbdd85614206889c86'

  # github.com/TryGhost/Ghost-Desktop was verified as official when first introduced to the cask
  url "https://github.com/TryGhost/Ghost-Desktop/releases/download/v#{version}/ghost-desktop-#{version}-osx.zip"
  appcast 'https://github.com/TryGhost/Ghost-Desktop/releases.atom',
          checkpoint: '87c67012cd25110002db39e8f7ba051b11093b1322aa31d37b6e109863865e79'
  name 'Ghost Desktop'
  homepage 'https://ghost.org/downloads/'

  app 'Ghost.app'
end
