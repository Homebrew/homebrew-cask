cask "houseparty" do
  version :latest
  sha256 :no_check

  # houseparty-mac-builds.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://houseparty-mac-builds.s3.amazonaws.com/Houseparty.dmg"
  name "Houseparty"
  desc "Face-to-face social networking app"
  homepage "https://houseparty.com/"

  app "Houseparty.app"

  zap trash: [
    "~/Library/Application Support/com.herzick.mac",
    "~/Library/Caches/com.herzick.mac",
    "~/Library/Preferences/Houseparty.plist",
    "~/Library/Preferences/HousepartyAnalytics.plist",
    "~/Library/Preferences/com.herzick.mac.plist",
  ]
end
