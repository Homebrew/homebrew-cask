cask "opencore-patcher" do
  version "1.3.0"
  sha256 "daaa2655f8094dec5068da258d580a2414193c1789d0ae75662dc4937073bd8c"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher-GUI.app.zip",
      verified: "github.com/dortania/OpenCore-Legacy-Patcher/"
  name "OpenCore Legacy Patcher GUI"
  desc "Boot loader to inject/patch current features for unsupported Macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  app "OpenCore-Patcher.app"

  uninstall delete: "/Library/LaunchAgents/com.dortania.opencore-legacy-patcher.auto-patch.plist"

  zap trash: [
    "~/Library/Application Support/CrashReporter/OpenCore-Patcher*",
    "~/Library/Preferences/com.dortania.opencore-legacy-patcher-wxpython.plist",
    "~/Library/Saved Application State/com.dortania.opencore-legacy-patcher-wxpython.savedState",
    "~/Library/Saved Application State/com.dortania.opencore-legacy-patcher.savedState",
    "/Users/Shared/.com.dortania.opencore-legacy-patcher.plist",
  ]
end
