cask "obsbot-webcam" do
  version "2.0.7.26"
  sha256 "9cbb74b769facdafa02d450cbc5c60d8adb7dc2472b0c7a52101bdf38c6354c1"

  url "https://obsbot-static-resource.oss-accelerate.aliyuncs.com/download/obsbot-webcam/Obsbot_WebCam_OA_E_MacOS_#{version}_release.dmg",
      verified: "obsbot-static-resource.oss-accelerate.aliyuncs.com/download/obsbot-webcam/"
  name "OBSBOT WebCam"
  desc "Configuration and firmware update utility for OBSBOT Tiny and Meet series"
  homepage "https://www.obsbot.com/download"

  livecheck do
    url "https://www.obsbot.com/download/obsbot-tiny-series"
    regex(/Obsbot[._-]WebCam[._-]OA[._-]E[._-]MacOS[._-](\d+(?:\.\d+)+)[._-]release\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "OBSBOT_WebCam.app"

  zap trash: [
    "~/Library/Application Support/OBSBOT_WebCam",
    "~/Library/Preferences/com.obsbot.OBSBOT_WebCam.plist",
    "~/Library/Saved Application State/com.obsbot.OBSBOT_WebCam.savedState",
  ]
end
