cask "debookee" do
  version "8.1.2,3298"
  sha256 :no_check

  url "https://www.iwaxx.com/debookee/debookee.zip",
      verified: "iwaxx.com/debookee/"
  name "Debookee"
  desc "Network traffic analyzer"
  homepage "https://debookee.com/"

  livecheck do
    url "https://www.iwaxx.com/debookee/appcast.php"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Debookee.app"

  uninstall delete:    "/Library/PrivilegedHelperTools/com.iwaxx.Debookee.PacketTool",
            launchctl: "com.iwaxx.Debookee.PacketTool"

  zap trash: [
    "~/.debookee",
    "~/Library/Application Support/com.iwaxx.Debookee",
    "~/Library/Caches/com.iwaxx.Debookee",
    "~/Library/Cookies/com.iwaxx.Debookee.binarycookies",
    "~/Library/Logs/Debookee",
    "~/Library/Preferences/com.iwaxx.Debookee.plist",
    "~/Library/Saved Application State/com.iwaxx.Debookee.savedState",
    "~/Library/WebKit/com.iwaxx.Debookee",
  ]
end
