cask "jitouch" do
  version "2.82.1"
  sha256 "3f5194a4da6fe19d17c843fa8a876131f7878905dcbb2e1d740d34d286d740c4"

  url "https://github.com/JitouchApp/Jitouch/releases/download/v#{version}/Install-Jitouch.pkg",
      verified: "github.com/JitouchApp/Jitouch/"
  name "Jitouch"
  desc "Multi-touch gestures editor"
  homepage "https://www.jitouch.com/"

  depends_on macos: ">= :high_sierra"

  pkg "Install-Jitouch.pkg"

  uninstall launchctl: "com.jitouch.Jitouch.agent",
            quit:      "com.jitouch.Jitouch",
            pkgutil:   "com.jitouch.Jitouch"

  zap trash: [
    "~/Library/LaunchAgents/com.jitouch.Jitouch.plist",
    "~/Library/Logs/com.jitouch.Jitouch.log",
    "~/Library/Logs/com.jitouch.Jitouch.prefpane.log",
    "~/Library/Preferences/com.jitouch.Jitouch.plist",
  ]
end
