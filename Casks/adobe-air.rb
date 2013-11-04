class AdobeAir < Cask
  url 'http://airdownload.adobe.com/air/mac/download/3.9/AdobeAIR.dmg'
  homepage 'https://get.adobe.com/air/'
  version '3.9'
  sha1 '5a7d72b74bb2d95535d866ad71db9577129f1e28'
  link 'Adobe AIR Installer.app'
  
  def caveats; <<-EOS.undent
    You need to run #{destination_path/'AdobeAIRInstaller.app'} to actually install Adobe AIR
    EOS
  end
end


