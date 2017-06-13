cask 'openmsx' do
  version '0.11.0'
  sha256 'a8624b266258558dbecc3e9f67f4b7aeab9a44a46714c4a1a9f2881aa99f17b1'

  url "https://downloads.sourceforge.net/openmsx/openmsx-#{version}-mac-x86_64-bin.dmg"
  appcast 'https://sourceforge.net/projects/openmsx/rss',
          checkpoint: 'bb73fd2f4896a55b1459f2c52835c58b1510737a5945183f532797fcbf14be73'
  name 'openMSX'
  homepage 'http://openmsx.sourceforge.net/'

  app 'openMSX.app'
end
