cask "jamie" do
  version "5.7.26"
  sha256 "6361bf0ad7998cd5d3aae45613a3188533e34ebd684d0e5dd6b13cbedb9c4875"

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
