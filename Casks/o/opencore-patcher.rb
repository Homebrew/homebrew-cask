cask "opencore-patcher" do
  version "1.4.0"
  sha256 "c9549aaaccf63cebe1c6025b6a4388be28c7b2fd47deb47b7740e5b1b974f4e9"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher-GUI.app.zip",
      verified: "github.com/dortania/OpenCore-Legacy-Patcher/"
  name "OpenCore Legacy Patcher GUI"
  desc "Boot loader to inject/patch current features for unsupported Macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  app "OpenCore-Patcher.app"

  uninstall delete: "/Library/LaunchAgents/com.dortania.opencore-legacy-patcher.auto-patch.plist"

  zap trash: [
    "/Users/Shared/.com.dortania.opencore-legacy-patcher.plist",
    "~/Library/Application Support/CrashReporter/OpenCore-Patcher*",
    "~/Library/Preferences/com.dortania.opencore-legacy-patcher-wxpython.plist",
    "~/Library/Saved Application State/com.dortania.opencore-legacy-patcher-wxpython.savedState",
    "~/Library/Saved Application State/com.dortania.opencore-legacy-patcher.savedState",
  ]
end
