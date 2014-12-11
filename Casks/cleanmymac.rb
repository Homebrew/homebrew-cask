cask :v1 => 'cleanmymac' do

  if MacOS.release <= :snow_leopard
    version :latest
    sha256 :no_check
    url 'http://dl.devmate.com/com.macpaw.CleanMyMac/CleanMyMacClassic.dmg'
    appcast 'http://updates.devmate.com/com.macpaw.CleanMyMac.xml'
    app 'CleanMyMac.app'
  else
    version :latest
    sha256 :no_check
    url 'http://dl.devmate.com/com.macpaw.CleanMyMac2/CleanMyMac2.dmg'
    appcast 'http://updates.devmate.com/com.macpaw.CleanMyMac2.xml'
    app 'CleanMyMac 2.app'
  end

  homepage 'http://macpaw.com/cleanmymac'
  license :commercial
end
