cask "obsbot-center" do
  version "2.0.8.37"
  sha256 "4f95bb4f8ec5ca70d56d2906f6503a7a58eb3b0bf7fc77bd4d4e0aa7f151dd9a"

  url "https://resource-cdn.obsbothk.com/download/obsbot-center/Obsbot_Center_OA_E_MacOS_#{version}_release.dmg",
      verified: "resource-cdn.obsbothk.com/download/obsbot-center/"
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
