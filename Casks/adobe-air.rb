class AdobeAir < Cask
  url 'http://airdownload.adobe.com/air/mac/download/4.0/AdobeAIR.dmg'
  homepage 'https://get.adobe.com/air/'
  version '4.0'
  sha1 'f319c2c603ff39e596c1c78c257980cf4fb0d0ef'
  caskroom_only true
  
  after_install do
    system "sudo #{destination_path}/Adobe\\ AIR\\ Installer.app/Contents/MacOS/Adobe\\ AIR\\ Installer -silent"
  end

  uninstall :script => {
    :executable => 'Adobe AIR Installer.app/Contents/MacOS/Adobe AIR Installer',
    :args => %w[-uninstall]
  }
end
