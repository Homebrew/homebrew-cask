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

  depends_on :macos

  app "Aimersoft Video Converter Ultimate.app"

  zap trash: [
        "~/Library/Application Support/Aimersoft/Video Converter Ultimate",
        "~/Library/Application Support/Video Converter Ultimate",
        "~/Library/Caches/com.Aimersoft.Video-Converter-Ultimate",
        "~/Library/HTTPStorages/com.Aimersoft.Video-Converter-Ultimate",
        "~/Library/Logs/VideoConvertForMac.log",
        "~/Library/Preferences/com.Aimersoft.Video-Converter-Ultimate.plist",
        "~/Library/Saved Application State/com.Aimersoft.Video-Converter-Ultimate.savedState",
      ],
      rmdir: "~/Library/Application Support/Aimersoft"

  caveats do
    requires_rosetta
  end
end
