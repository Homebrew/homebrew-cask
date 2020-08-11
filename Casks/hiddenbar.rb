cask "hiddenbar" do
  version "1.6"
  sha256 "7043cf6a07d9ebdfc1e67656197183bc6dfa81504d447f22b7c89cb62e136893"

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
