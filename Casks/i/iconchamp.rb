cask "iconchamp" do
  version "1.3.6"
  sha256 :no_check

  url "https://github.com/MacEnhance/appcast/raw/master/IconChamp/IconChamp.zip",
      verified: "github.com/MacEnhance/appcast/"
  name "IconChamp"
  desc "Icon theming app for Big Sur and Monterey"
  homepage "https://www.macenhance.com/iconchamp"

  livecheck do
    url "https://raw.githubusercontent.com/MacEnhance/appcast/master/IconChamp/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :big_sur"

  app "IconChamp.app"

  uninstall launchctl: "com.macenhance.ICHelper",
            quit:      "com.macenhance.IconChamp",
            delete:    [
              "/Library/LaunchDaemons/com.macenhance.ICHelper.plist",
              "/Library/PrivilegedHelperTools/com.macenhance.ICHelper",
            ]

  zap trash: [
    "/Users/Shared/IconChamp",
    "~/Library/Application Support/com.macenhance.IconChamp",
    "~/Library/Application Support/IconChamp",
    "~/Library/Caches/com.macenhance.IconChamp",
    "~/Library/HTTPStorages/com.macenhance.IconChamp",
    "~/Library/HTTPStorages/com.macenhance.IconChamp.binarycookies",
    "~/Library/Preferences/com.macenhance.IconChamp.plist",
    "~/Library/Saved Application State/com.macenhance.IconChamp.savedState",
  ]
end
