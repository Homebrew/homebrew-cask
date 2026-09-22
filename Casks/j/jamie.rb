cask "jamie" do
  version "5.7.19"
  sha256 "d1feb49e446309ac599ec192b9b1aa2df4ea154c6e78ee7ed07312dfc9fb72ec"

  url "https://github.com/meetjamie/releases/releases/download/app-v#{version}/Jamie_#{version}_universal.app.tar.gz"
  name "Jamie"
  desc "AI-powered meeting notes"
  homepage "https://www.meetjamie.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Jamie.app"

  uninstall launchctl: "Jamie"

  zap trash: [
    "~/Library/Application Support/com.jamie.app",
    "~/Library/Application Support/jamie",
    "~/Library/Caches/com.jamie.app",
    "~/Library/HTTPStorages/com.jamie.app.binarycookies",
    "~/Library/LaunchAgents/Jamie.plist",
    "~/Library/WebKit/com.jamie.app",
  ]
end
