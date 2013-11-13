class AdobeAir < Cask
  url 'http://airdownload.adobe.com/air/mac/download/3.9/AdobeAIR.dmg'
  homepage 'https://get.adobe.com/air/'
  version '3.9'
  sha1 'd2ea487a8f20e7042e9d8e99f312056daf5dc925'
  link 'Adobe AIR Installer.app'
  
  def caveats; <<-EOS.undent
    You need to run #{destination_path/'AdobeAIRInstaller.app'} to actually install Adobe AIR
    EOS
  end
end


