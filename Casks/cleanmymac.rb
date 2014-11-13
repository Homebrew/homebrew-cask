cask :v1 => 'cleanmymac' do
  version :latest
  sha256 :no_check

  url 'http://dl.devmate.com/com.macpaw.CleanMyMac2/CleanMyMac2.dmg'
  appcast 'http://updates.devmate.com/com.macpaw.CleanMyMac2.xml'
  homepage 'http://macpaw.com/cleanmymac'
  license :unknown

  app 'CleanMyMac 2.app'
end
