cask 'omnidisksweeper' do
  version '1.10.x-r297660'
  sha256 '7afb315ba62469f0c50532befc7d27151d629294c1b3c43aefc3f52978caf526'

  url "https://omnistaging.omnigroup.com/omnidisksweeper/releases/OmniDiskSweeper-#{version}-Test.dmg"
  name 'OmniDiskSweeper'
  homepage 'https://www.omnigroup.com/more/'

  auto_updates true

  app 'OmniDiskSweeper.app'
end
