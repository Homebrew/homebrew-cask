class AdobeAir < Cask
  url 'http://airdownload.adobe.com/air/mac/download/3.9/AdobeAIR.dmg'
  homepage 'https://get.adobe.com/air/'
  version '3.9'
  sha1 '69863ef58dca864c9b9016b512ea79e5d1429498'
  link 'Adobe AIR Installer.app'
  
  def caveats; <<-EOS.undent
    You need to run #{destination_path/'AdobeAIRInstaller.app'} to actually install Adobe AIR
    EOS
  end
end


