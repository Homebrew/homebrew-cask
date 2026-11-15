cask "hiddenbar" do
  version "1.11.2"
  sha256 "5a51251bbd212da8d547c431d413e3b99ba6d29e7f9fd2c4e044159c4db46bd6"

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
