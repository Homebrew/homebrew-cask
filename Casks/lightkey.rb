cask 'lightkey' do
  version '1.6.3'
  sha256 '0d34f58aca3f9459a12f6d1a43327d58d6b58c1120084d80a18851dbce226bb7'

  url "http://lightkeyapp.com/content/06-download/Lightkey-#{version.dots_to_hyphens}/LightkeyInstaller.zip"
  name 'Lightkey'
  homepage 'http://lightkeyapp.com/'

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
