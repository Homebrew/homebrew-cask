cask 'openmsx' do
  version '0.11.0'
  sha256 'a8624b266258558dbecc3e9f67f4b7aeab9a44a46714c4a1a9f2881aa99f17b1'

  url "http://downloads.sourceforge.net/sourceforge/openmsx/openmsx-#{version}-mac-x86_64-bin.dmg"
  name 'openMSX'
  homepage 'http://openmsx.sourceforge.net'
  license :gpl

  app 'openMSX.app'
end
