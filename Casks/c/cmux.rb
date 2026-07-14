cask "cmux" do
  version "0.64.18"
  sha256 "2b66c345865955b9b1eb42d7061ad54211f6b340255c9be4feb9aa3d70ee2a92"

  url "https://github.com/manaflow-ai/cmux/releases/download/v#{version}/cmux-macos.dmg",
      verified: "github.com/manaflow-ai/cmux/"
  name "cmux"
  desc "Ghostty-based terminal with vertical tabs and notifications for AI coding agents"
  homepage "https://www.cmux.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "cmux.app"
  binary "#{appdir}/cmux.app/Contents/Resources/bin/cmux"

  zap trash: [
    "~/.config/cmux",
    "~/Library/Application Support/cmux",
    "~/Library/Application Support/com.cmuxterm.app",
    "~/Library/Caches/cmux",
    "~/Library/Caches/com.cmuxterm.app",
    "~/Library/Caches/SentryCrash/cmux",
    "~/Library/HTTPStorages/com.cmuxterm.app",
    "~/Library/HTTPStorages/com.cmuxterm.app.binarycookies",
    "~/Library/Logs/cmux-update.log",
    "~/Library/Preferences/com.cmuxterm.app.plist",
    "~/Library/WebKit/com.cmuxterm.app",
  ]
end
