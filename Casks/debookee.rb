cask "debookee" do
  version "7.5.1"
  sha256 "555bd10aef360912216b7cb39d121c6b53a0a23bd1ed65bd99a8f6e76c840eb6"

  # iwaxx.com/debookee/ was verified as official when first introduced to the cask
  url "https://www.iwaxx.com/debookee/debookee.zip"
  appcast "https://www.iwaxx.com/debookee/appcast.php"
  name "Debookee"
  desc "Network traffic analyzer"
  homepage "https://debookee.com/"

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
