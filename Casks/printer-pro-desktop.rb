cask 'printer-pro-desktop' do
  version '1.3.7'
  sha256 '6baa80352c3756824972a6aac8ebdabebcc082f693018d04a7a95f062565e704'

  url "https://support.readdle.com/ppd/PrinterProDesktop-#{version.gsub('.', '_')}.dmg"
  name 'Printer Pro Desktop'
  homepage 'https://support.readdle.com/ppd/'
  license :gratis

  app 'Printer Pro Desktop.app'
end
