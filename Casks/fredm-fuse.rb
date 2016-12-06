cask 'fredm-fuse' do
  version '1.3.1'
  sha256 'caeb272533fefcaad6864c8f556deb32294d3c3cc207aae8e21a2036a58c3415'

  url "https://downloads.sourceforge.net/fuse-for-macosx/fuse-for-macosx/#{version}/FuseForMacOSX-#{version}.zip"
  appcast 'https://sourceforge.net/projects/fuse-for-macosx/rss?path=/fuse-for-macosx',
          checkpoint: '37a3f5feb4738593160361ed1018da1d37a9aa5c855e3c7758e67fd807f7c418'
  name 'Fuse for Mac OS X'
  homepage 'http://fuse-for-macosx.sourceforge.net/'

  app 'Fuse for Mac OS X/Fuse.app'
end
