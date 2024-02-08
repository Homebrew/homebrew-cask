cask "obsbot-center" do
  version "2.0.8.24"
  sha256 "d0b55043f0133572c2fa06595ff7c37cc90d7cccf3b3c26dde5955f6b77bdfd5"

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
