cask "opencore-legacy-patcher-gui" do
  version "0.4.7"
  sha256 :no_check

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/0.4.7/OpenCore-Patcher-GUI.app.zip",
      verified: "github.com/"
  name "OpenCore Legacy Patcher GUI"
  desc "Boot loader to inject/patch current features for unsupported Macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  livecheck do
    url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases"
    strategy :github_latest
  end

  auto_updates true
  container type: :zip

  app "OpenCore-Patcher.app"

  zap trash: [
    "/Library/LaunchAgents/com.dortania.opencore-legacy-patcher.auto-patch.plist",
    "/Users/Shared/.com.dortania.opencore-legacy-patcher.plist",
    "~/Library/Application Support/CrashReporter/OpenCore-Patcher*",
    "~/Library/Preferences/com.dortania.opencore-legacy-patcher-wxpython.plist",
    "~/Library/Saved Application State/com.dortania.opencore-legacy-patcher-wxpython.savedState",
    "~/Library/Saved Application State/com.dortania.opencore-legacy-patcher.savedState",
  ]
end
