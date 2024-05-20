cask "quickrecorder" do
  version "1.2.4"
  sha256 "b87d107638bbc8c9d2956eab5dbc09e5d8f77c9b5ffdbb38544e1dbeabf16dc4"

  url "https://github.com/lihaoyun6/QuickRecorder/releases/download/#{version}/QuickRecorder_v#{version}.dmg",
      verified: "github.com/lihaoyun6/QuickRecorder/"
  name "QuickRecorder"
  desc "Lightweight and high-performance screen recorder for macOS"
  homepage "https://lihaoyun6.github.io/quickrecorder/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "QuickRecorder.app"

  zap trash: [
    "~/Library/HTTPStorages/com.lihaoyun6.QuickRecorder",
    "~/Library/Preferences/com.lihaoyun6.QuickRecorder.plist",
  ]
end
