cask :v1 => 'ftdi-vcp-driver' do
  if MacOS.release <= :mountain_lion
    version '2.2.18'
    sha256 '248f582527175ab07334f6a1255c8be2da4dfc36da49e26d39a2f61f5b7ba2e7'
    pkg 'FTDIUSBSerialDriver_10_4_10_5_10_6_10_7.mpkg'
  else
    version '2.3'
    sha256 '08e7fab56d20832ea609bfb2758130279ba49722084298a952796a009b82442d'
    pkg 'FTDIUSBSerial.pkg'
  end

  url "http://www.ftdichip.com/Drivers/VCP/MacOSX/FTDIUSBSerialDriver_v#{version.gsub('.','_')}.dmg"
  name 'FTDI VCP Driver'
  homepage 'http://www.ftdichip.com/Drivers/VCP.htm'
  license :gratis

  uninstall :pkgutil => 'com.FTDI.ftdiusbserialdriverinstaller.*',
            :kext    => 'com.FTDI.driver.FTDIUSBSerialDriver'

end
