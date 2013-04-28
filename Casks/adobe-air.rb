class AdobeAir < Cask
  url 'http://airdownload.adobe.com/air/mac/download/3.5/AdobeAIR.dmg'
  homepage 'https://get.adobe.com/air/'
  version '3.5'
  sha1 '8fbd2dffc20442903d8b51e7362a3191f39752b4'

  link :app, :none

  def caveats; <<-EOS.undent
    You need to run #{destination_path/'AdobeAIRInstaller.app'} to actually install Adobe AIR
    EOS
  end
end
