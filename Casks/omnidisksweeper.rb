cask 'omnidisksweeper' do
  if MacOS.version <= :lion
    version '1.8'
    sha256 '04e6da65a21294e9ee49da370ad2f617bf668001d2aecb9cc7579d1b8f02f613'
    url "https://downloads.omnigroup.com/software/MacOSX/10.6/OmniDiskSweeper-#{version}.dmg"
  elsif MacOS.version <= :el_capitan
    version '1.9'
    sha256 '4dfcdb29bbae8b7eba22d010cb2fd2aab0547c1a1df632bc9c1ee77be206f09b'
    url "https://downloads.omnigroup.com/software/MacOSX/10.8/OmniDiskSweeper-#{version}.dmg"
  elsif MacOS.version <= :sierra
    version '1.10'
    sha256 '0d8f5b7ff075fca4503a41e1ea898a145001f3f602f6b53ffb310e0a465af080'
    url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniDiskSweeper-#{version}.dmg"
  else
    version '1.11(n)'
    sha256 'f06b150239e5c5ee27615b1e8bd6ec2c87c61c4cda575547f124ff84986b6f37'
    url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniDiskSweeper-#{version}.dmg"
  end

  appcast 'https://update.omnigroup.com/appcast/com.omnigroup.OmniDiskSweeper'
  name 'OmniDiskSweeper'
  homepage 'https://www.omnigroup.com/more/'

  app 'OmniDiskSweeper.app'
end
