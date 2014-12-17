cask :v1 => 'batch-rip-actions-for-automator' do
  version '1.1.1'
  sha256 '223f443c1909c82e83574f8b155fe282ee360e492fa693a0d3c1e6d57a67e28d'

  url "http://dl.dropbox.com/u/242398/BatchRip/BatchRipActions-#{version}.dmg"
  homepage 'http://forums.macrumors.com/showthread.php?t=805573'
  license :unknown

  app 'Batch Rip Actions for Automator.app'
end
