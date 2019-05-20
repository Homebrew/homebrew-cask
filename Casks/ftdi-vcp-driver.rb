cask 'ftdi-vcp-driver' do
  version '2.4.2'
  sha256 'b57377e10de1c8ae9ddaffa147e4cc529c3571b512bba4798b2b6054d4fabd92'

  url "https://www.ftdichip.com/Drivers/VCP/MacOSX/FTDIUSBSerialDriver_v2_4_2.dmg"
  name 'ftdi-vcp-driver'
  homepage 'https://www.ftdichip.com/Drivers/VCP.htm'

  pkg 'FTDIUSBSerial.pkg'
  uninstall pkgutil:'com.FTDI.driver.FTDIUSBSerialDriver'
end
