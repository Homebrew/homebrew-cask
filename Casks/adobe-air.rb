class AdobeAir < Cask
  url 'http://airdownload.adobe.com/air/mac/download/3.9/AdobeAIR.dmg'
  homepage 'https://get.adobe.com/air/'
  version '3.9'
  sha1 '69863ef58dca864c9b9016b512ea79e5d1429498'
  caskroom_only true
  
  after_install do
    system "sudo #{destination_path}/Adobe\\ AIR\\ Installer.app/Contents/MacOS/Adobe\\ AIR\\ Installer -silent"
  end

  uninstall :script => {
    :executable => 'Adobe AIR Installer.app/Contents/MacOS/Adobe AIR Installer',
    :args => %w[-uninstall]
  }
end
