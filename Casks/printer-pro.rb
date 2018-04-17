cask 'printer-pro' do
  version '1.3.10'
  sha256 '15f863b950c60e78032d3abc3a5a69d840d35e84c7f4a113e3c9e986959c313b'

  url "https://support.readdle.com/ppd/PrinterProDesktop-#{version.dots_to_underscores}.dmg"
  name 'Printer Pro Desktop'
  homepage 'https://support.readdle.com/ppd/'

  app 'Printer Pro Desktop.app'
end
