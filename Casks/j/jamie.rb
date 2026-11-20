cask "jamie" do
  version "5.8.0"
  sha256 "e4acf288ff14e3f3766c005e43f84064620f2dbdcac4b24e1badab3539989c72"

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
