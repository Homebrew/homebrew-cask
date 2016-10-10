cask 'printer-pro-desktop' do
  version '1.3.7'
  sha256 '6baa80352c3756824972a6aac8ebdabebcc082f693018d04a7a95f062565e704'

  url "https://support.readdle.com/ppd/PrinterProDesktop-#{version.dots_to_underscores}.dmg"
  name 'Printer Pro Desktop'
  homepage 'https://support.readdle.com/ppd/'

  app 'Printer Pro Desktop.app'
end
