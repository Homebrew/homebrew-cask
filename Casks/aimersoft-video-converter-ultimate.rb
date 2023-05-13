cask "aimersoft-video-converter-ultimate" do
  version "11.6.7.1"
  sha256 :no_check

  url "https://download.aimersoft.com/cbs_down/aimer-mac-video-converter-ultimate_full747.dmg"
  name "Aimersoft Video Converter Ultimate"
  desc "Video converter app"
  homepage "https://www.aimersoft.com/video-converter-ultimate.html"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Aimersoft Video Converter Ultimate.app"
end
