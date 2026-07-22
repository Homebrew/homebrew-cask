cask "jamie" do
  version "5.7.9"
  sha256 "205322e11f221994cf0663db882db9e30ec6c7ca38fd9222ae1e9badbafe2870"

  url "https://github.com/meetjamie/releases/releases/download/app-v#{version}/Jamie_universal.app.tar.gz",
      verified: "github.com/meetjamie/releases/"
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
