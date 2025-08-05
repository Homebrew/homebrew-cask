cask "obsbot-center" do
  version "2.0.10.40"
  sha256 "7b1c1eff35d192f63dd6cf3f1d3d993223c53f4a1b3f43217509aca65de4140c"

  url "https://resource-cdn.obsbothk.com/download/obsbot-center/Obsbot_Center_OA_E_MacOS_#{version}_release.dmg",
      verified: "resource-cdn.obsbothk.com/download/obsbot-center/"
  name "OBSBOT Center"
  desc "Configuration and firmware update utility for OBSBOT Tiny and Meet series"
  homepage "https://www.obsbot.com/download"

  disable! date: "2025-04-07", because: "now has the download artifact behind a signed URL"

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
