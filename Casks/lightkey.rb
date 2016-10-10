cask 'lightkey' do
  version '1.6.2'
  sha256 '06cf4a9b9c609a91cff69f1fccbf73df0f81a4efdbf223aa92205aec74f43027'

  url "http://lightkeyapp.com/content/06-download/Lightkey-#{version.dots_to_hyphens}/LightkeyInstaller.zip"
  name 'Lightkey'
  homepage 'http://lightkeyapp.com'

  pkg 'LightkeyInstaller.pkg'

  uninstall pkgutil: [
                       'de.monospc.lightkey.pkg.App',
                       'de.monospc.lightkey.pkg.Eurolite',
                       'de.monospc.lightkey.pkg.OLA',
                       'de.monospc.lightkey.pkg.Velleman',
                       'de.monospc.lightkey.pkg.documentation',
                     ]

  zap pkgutil: [
                 'com.FTDI.ftdiusbserialdriverinstaller.FTDIUSBSerialDriver.pkg',
               ]
end
