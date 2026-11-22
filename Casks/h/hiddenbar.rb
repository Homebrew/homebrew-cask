cask "hiddenbar" do
  version "1.13.3"
  sha256 "e6168b27091fd002b4d7d47db02e40a02eb07431e4ed8037c260393434d0a73f"

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
