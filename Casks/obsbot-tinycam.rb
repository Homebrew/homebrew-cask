cask "obsbot-tinycam" do
  version "1.3.3.1"
  sha256 "410e707818e4d598c5cfa9012bc3f06b9635c4b565fa99293178ef68f15e67fb"

  url "https://obsbot-static-resource.oss-cn-hongkong.aliyuncs.com/download/obsbot-tiny-4k/software/Obsbot_tiny_pc_OA_E_MacOS_#{version}_release.dmg",
      verified: "obsbot-static-resource.oss-cn-hongkong.aliyuncs.com"
  name "OBSBOT TinyCam"
  desc "Configuration and firmware update utility for OBSBOT Tiny and Tiny 4K webcams"
  homepage "https://www.obsbot.com/download"

  livecheck do
    url :homepage
    regex(/url:.*?Obsbot_tiny_pc_OA_E_MacOS_(\d+(?:\.\d+)+)_release\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "OBSBOT TinyCam.app"

  zap trash: [
    "~/Library/Preferences/remo-ai.OBSBOT-TinyCam.plist",
    "~/Library/Saved Application State/remo-ai.OBSBOT-TinyCam.savedState",
  ]
end
