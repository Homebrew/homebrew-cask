cask 'printer-pro' do
  version '1.3.9'
  sha256 '455223c814f90fda3754b85f1fcb7fda98e93722167b0a3aa3091a11bd2d5ef5'

  url "https://support.readdle.com/ppd/PrinterProDesktop-#{version.dots_to_underscores}.dmg"
  name 'Printer Pro Desktop'
  homepage 'https://support.readdle.com/ppd/'

  app 'Printer Pro Desktop.app'
end
