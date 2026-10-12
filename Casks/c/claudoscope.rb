cask "claudoscope" do
  version "1.4.0"
  sha256 "59b1712cc95f27403a7c85b5f286e302b1fe9139833c5abd21a3dde0afa04ebe"

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
