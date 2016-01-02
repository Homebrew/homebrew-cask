cask 'iupx' do
  version '1.2'
  sha256 '24f2bc2dacd31ce7f3dd883b70b32fc9b8cea447a7b309333108b9888cb194d5'

  url "http://downloads.sourceforge.net/sourceforge/iupx/iUPX_#{version.sub('.','_')}_universal.zip"
  appcast 'http://iupx.sourceforge.net/updates/appcast.xml',
          :sha256 => '33789d366b840c0c165b4b26c0637a72f89250eaaeaa3adb42df77c1b258cdbc'
  name 'iUPX'
  homepage 'http://iupx.sourceforge.net'
  license :gpl

  app 'iUPX.app'
end
