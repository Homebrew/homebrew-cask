cask "claudoscope" do
  version "1.5.0"
  sha256 "05085c2bb9ba0657e723883480a6884723e87ecce4f84c7d896906b5bbf2281c"

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
