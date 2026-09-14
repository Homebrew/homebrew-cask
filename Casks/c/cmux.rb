cask "cmux" do
  version "0.64.23"
  sha256 "80a3572cbac937149ff1638771952105fe9d685198395ffdf2addf92f525a9bd"

  url "https://github.com/manaflow-ai/cmux/releases/download/v#{version}/cmux-macos.dmg"
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

  uninstall launchctl: "application.com.cmuxterm.cua.*",
            quit:      "com.cmuxterm.app"

  zap trash: [
    "~/.cmuxterm",
    "~/.config/cmux",
    "~/Library/Application Support/cmux",
    "~/Library/Application Support/com.cmuxterm.app",
    "~/Library/Caches/cmux",
    "~/Library/Caches/com.cmuxterm.app",
    "~/Library/Caches/SentryCrash/cmux",
    "~/Library/HTTPStorages/com.cmuxterm.app",
    "~/Library/HTTPStorages/com.cmuxterm.app.binarycookies",
    "~/Library/Logs/cmux-focus.log",
    "~/Library/Logs/cmux-update.log",
    "~/Library/Preferences/com.cmuxterm.app.plist",
    "~/Library/WebKit/com.cmuxterm.app",
  ]
end
