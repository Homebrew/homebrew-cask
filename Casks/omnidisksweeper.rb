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
    version '1.11'
    sha256 '07922414eb5f0a98f4440fb45f4ab91e058db71319feb0f995b649565a801cdd'
    url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniDiskSweeper-#{version}.dmg"
  end

  name 'OmniDiskSweeper'
  homepage 'https://www.omnigroup.com/more/'

  app 'OmniDiskSweeper.app'
end
