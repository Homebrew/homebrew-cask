cask "liteicon" do
  version "4.1"
  sha256 "545cff53df31b63fe28e794fb7f45e4c891885f5de57422b1483724f6d7ed4e0"

  url "https://www.freemacsoft.net/downloads/LiteIcon_#{version}.zip"
  name "LiteIcon"
  desc "Tool to change system icons"
  homepage "https://freemacsoft.net/liteicon/"

  deprecate! date: "2024-06-11", because: :discontinued
  disable! date: "2025-06-11", because: :discontinued

  auto_updates true

  app "LiteIcon.app"

  uninstall launchctl: "net.freemacsoft.LiteIcon.LIHelperTool",
            quit:      "net.freemacsoft.LiteIcon",
            delete:    [
              "/Library/PrivilegedHelperTools/net.freemacsoft.LiteIcon.LIHelperTool",
              "~/Library/Application Support/LiteIcon",
            ]

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.freemacsoft.liteicon.sfl*",
    "~/Library/Application Support/CrashReporter/LiteIcon_*.plist",
    "~/Library/Preferences/net.freemacsoft.LiteIcon.plist",
  ]

  caveats do
    requires_rosetta
  end
end
