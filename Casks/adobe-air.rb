class AdobeAirInstaller < Cask
  url 'http://airdownload.adobe.com/air/mac/download/3.5/AdobeAIR.dmg'
  homepage 'https://get.adobe.com/air/'
  version '3.5'
  
  #caveat 'You need to run {{install_path}}/AdobeAIRInstaller.app to actually install Adobe AIR'
  
  sha1 '42e3af2bd82a285e1b3d7d0c9779a8d19dcdd723'
end