cask "jamie" do
  version "5.7.21"
  sha256 "8371e98214ea6b04ce7292f8cec23785099a3aa5aa27ca2626c2b2bb8270a574"

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
