cask "hiddenbar" do
  version "1.7"
  sha256 "3f5462302ff89b5992868c62243d4401b724446a1627f6f208487d7d967ce2bb"

  url "https://github.com/dwarvesf/hidden/releases/download/v#{version}/Hidden.Bar.#{version}.dmg"
  appcast "https://github.com/dwarvesf/hidden/releases.atom"
  name "Hidden Bar"
  desc "Utility to hide menu bar items"
  homepage "https://github.com/dwarvesf/hidden/"

  depends_on macos: ">= :high_sierra"

  app "Hidden Bar.app"

  uninstall quit:      "com.dwarvesv.minimalbar",
            launchctl: "com.dwarvesv.LauncherApplication"

  zap trash: [
    "~/Library/Application Scripts/com.dwarvesv.LauncherApplication",
    "~/Library/Application Scripts/com.dwarvesv.minimalbar",
    "~/Library/Containers/com.dwarvesv.LauncherApplication",
    "~/Library/Containers/com.dwarvesv.minimalbar",
  ]
end
