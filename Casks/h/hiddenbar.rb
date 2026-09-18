cask "hiddenbar" do
  version "1.11"
  sha256 "8ce4d3178b3f8ebe5587ac9f259f4349ce872a458d6fbb4d0cd5c28c65712c80"

  url "https://github.com/dwarvesf/hidden/releases/download/v#{version}/Hidden-Bar-v#{version}-macos.zip"
  name "Hidden Bar"
  desc "Utility to hide menu bar items"
  homepage "https://github.com/dwarvesf/hidden/"

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
  ]
end
