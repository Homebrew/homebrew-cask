cask :v1 => 'batch-rip-actions-for-automator' do
  version '1.1.1'
  sha256 '223f443c1909c82e83574f8b155fe282ee360e492fa693a0d3c1e6d57a67e28d'

  url "http://dl.dropbox.com/u/242398/BatchRip/BatchRipActions-#{version}.dmg"
  homepage 'http://forums.macrumors.com/showthread.php?t=805573'
  license :unknown

  app 'Batch Rip Actions for Automator.app'
	
  zap :delete => [
    '~/Library/Services/Batch Rip • Add Chapter Names (Custom).workflow',
    '~/Library/Services/Batch Rip • Add Chapter Names (Filename).workflow',
    '~/Library/Services/Batch Rip • Add Chapter Names (Search).workflow',
    '~/Library/Services/Batch Rip • Add Genre to Movie File.workflow',
    '~/Library/Services/Batch Rip • Add HD Flag.workflow',
    '~/Library/Services/Batch Rip • Add Movie Comment.workflow',
    '~/Library/Services/Batch Rip • Add Movie Poster.workflow',
    '~/Library/Services/Batch Rip • Add Movie Tags (Filename).workflow',
    '~/Library/Services/Batch Rip • Add Movie Tags (Search).workflow',
    '~/Library/Services/Batch Rip • Add TV Show Comment.workflow',
    '~/Library/Services/Batch Rip • Add TV Tags (Filename).workflow',
    '~/Library/Services/Batch Rip • Add TV Tags (Search).workflow',
    '~/Library/Services/Batch Rip • Add cnID to Selected (Same).workflow',
    '~/Library/Services/Batch Rip • Add cnID to Selected (Unique).workflow',
    '~/Library/Services/Batch Rip • Batch Encode (Finder).workflow',
    '~/Library/Services/Batch Rip • Batch Encode.workflow',
    '~/Library/Services/Batch Rip • Batch Rip (Finder).workflow',
    '~/Library/Services/Batch Rip • Batch Rip.workflow',
    '~/Library/Services/Batch Rip • Get Source Info from HandBrake.workflow',
    '~/Library/Services/Batch Rip • Remove All Tags.workflow',
    '~/Library/Services/Batch Rip • Rename & Add Custom Title Tag.workflow',
    '~/Library/Services/Batch Rip • Rename & Tag Movie Items.workflow',
    '~/Library/Services/Batch Rip • Rename & Tag TV Items.workflow',
    '~/Library/Services/Batch Rip • Rename Movie Items.workflow',
    '~/Library/Services/Batch Rip • Rename TV Items.workflow',
    '~/Library/Services/Batch Rip • Tag Inspector.workflow'
  ]
end
