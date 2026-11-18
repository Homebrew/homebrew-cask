cask "hiddenbar" do
  version "1.13.1"
  sha256 "9e2f03264633259b889a0a22001e1f5234adddcdf951643175355d2a95d1a5ff"

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
