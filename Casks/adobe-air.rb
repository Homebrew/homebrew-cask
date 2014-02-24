class AdobeAir < Cask
  url 'http://airdownload.adobe.com/air/mac/download/4.0/AdobeAIR.dmg'
  homepage 'https://get.adobe.com/air/'
  version '4.0'
  sha256 '7be7fa0b6cd59ca3a85805e519135f738373719017c040ce7021b916427144a0'
  caskroom_only true

  after_install do
    system "sudo #{destination_path}/Adobe\\ AIR\\ Installer.app/Contents/MacOS/Adobe\\ AIR\\ Installer -silent"
  end

  uninstall :script => {
    :executable => 'Adobe AIR Installer.app/Contents/MacOS/Adobe AIR Installer',
    :args => %w[-uninstall]
  }
end
