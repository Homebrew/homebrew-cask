cask "hiddenbar" do
  version "1.13.4"
  sha256 "3aeacbeacdcc52b6095da6084d1c7f7c4df2e0c6d09421ff3ebbc0b4717c7d09"

  url "https://github.com/consolelabs/hidden/releases/download/v#{version}/Hidden-Bar-v#{version}-macos.zip"
  name "Hidden Bar"
  desc "Utility to hide menu bar items"
  homepage "https://github.com/consolelabs/hidden/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Hidden Bar.app"

  uninstall launchctl: "com.dwarvesv.LauncherApplication",
            quit:      "com.dwarvesv.minimalbar"

  zap trash: [
    "~/Library/Application Scripts/com.dwarvesv.LauncherApplication",
    "~/Library/Application Scripts/com.dwarvesv.minimalbar",
    "~/Library/Containers/com.dwarvesv.LauncherApplication",
    "~/Library/Containers/com.dwarvesv.minimalbar",
    "~/Library/Preferences/com.dwarvesv.minimalbar.plist",
  ]
end
