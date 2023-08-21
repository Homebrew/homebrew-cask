cask "obsbot-webcam" do
  version "2.0.6.2"
  sha256 "3ed307b63a969cade5582c26e0ebfd39836f701058a500c7879c31258d5002a5"

  url "https://obsbot-static-resource.oss-accelerate.aliyuncs.com/download/obsbot-webcam/Obsbot_WebCam_OA_E_MacOS_#{version}_release.dmg",
      verified: "obsbot-static-resource.oss-accelerate.aliyuncs.com/download/obsbot-webcam/"
  name "OBSBOT WebCam"
  desc "Configuration and firmware update utility for OBSBOT Tiny and Meet series"
  homepage "https://www.obsbot.com/download"

  livecheck do
    url "https://www.obsbot.com/download/obsbot-tiny-series"
    regex(/Obsbot[._-]WebCam[._-]OA[._-]E[._-]MacOS[._-](\d+(?:\.\d+)+)[._-]release\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "OBSBOT_WebCam.app"

  zap trash: [
    "~/Library/Application Support/OBSBOT_WebCam",
    "~/Library/Preferences/com.obsbot.OBSBOT_WebCam.plist",
    "~/Library/Saved Application State/com.obsbot.OBSBOT_WebCam.savedState",
  ]
end
