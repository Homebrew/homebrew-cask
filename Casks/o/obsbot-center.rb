cask "obsbot-center" do
  version "2.0.10.10"
  sha256 "4a956653f8a13521411bd2b97b4c5e59ede5588f6b645255a696904aa0bd3961"

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

  caveats do
    requires_rosetta
  end
end
