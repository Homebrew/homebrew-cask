cask "hiddenbar" do
  version "1.8"
  sha256 "e79081cd2d4928f91d80c7c1664c61e4e0632b7ee942ad3cdb000dc7b3d9698a"

  url "https://github.com/dwarvesf/hidden/releases/download/v#{version}/Hidden.Bar.#{version}.dmg"
  name "Hidden Bar"
  desc "Utility to hide menu bar items"
  homepage "https://github.com/dwarvesf/hidden/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
