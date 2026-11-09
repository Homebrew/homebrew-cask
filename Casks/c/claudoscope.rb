cask "claudoscope" do
  version "1.4.1"
  sha256 "96035bec60b2794c06e57d53643b3feb5031efe73057695b4f623b730fe51b34"

  url "https://github.com/cordwainersmith/Claudoscope/releases/download/v#{version}/Claudoscope.dmg"
  name "Claudoscope"
  desc "Menu bar dashboard for Claude Code sessions"
  homepage "https://claudoscope.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Claudoscope.app"

  uninstall quit: "com.claudoscope.app"

  zap trash: [
    "~/Library/Application Support/Claudoscope",
    "~/Library/Caches/com.claudoscope.app",
    "~/Library/HTTPStorages/com.claudoscope.app",
    "~/Library/Preferences/com.claudoscope.app.plist",
  ]
end
