cask "obsbot-center" do
  version "2.0.8.18"
  sha256 "0b1302dcad857047204c9ba253c0f3ee171c10608957d76c8d056b736970fb1a"

  url "https://obsbot-static-resource.oss-accelerate.aliyuncs.com/download/obsbot-webcam/Obsbot_Center_OA_E_MacOS_#{version}_release.dmg",
      verified: "obsbot-static-resource.oss-accelerate.aliyuncs.com/download/obsbot-webcam/"
  name "OBSBOT Center"
  desc "Configuration and firmware update utility for OBSBOT Tiny and Meet series"
  homepage "https://www.obsbot.com/download"

  livecheck do
    url "https://www.obsbot.com/download/obsbot-tiny-series"
    regex(/Obsbot[._-]Center[._-]OA[._-]E[._-]MacOS[._-](\d+(?:\.\d+)+)[._-]release\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "OBSBOT_Center.app"

  zap trash: [
    "~/Library/Application Support/OBSBOT_Center",
    "~/Library/Caches/com.obsbot.OBSBOT_Center",
    "~/Library/HTTPStorages/com.obsbot.OBSBOT_Center",
    "~/Library/Preferences/com.obsbot.OBSBOT_Center.plist",
  ]
end
