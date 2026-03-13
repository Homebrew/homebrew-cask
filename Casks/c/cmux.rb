cask "cmux" do
  version "0.62.1"
  sha256 "3be67bc3600fdde1c2b62c02c448235bd81ad0bf0772ff33353a6d91cc4b19fe"

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
  depends_on macos: ">= :sonoma"

  app "cmux.app"
  binary "#{appdir}/cmux.app/Contents/Resources/bin/cmux"

  zap trash: [
    "~/Library/Application Support/cmux",
    "~/Library/Application Support/com.cmuxterm.app",
    "~/Library/Caches/cmux",
    "~/Library/Caches/com.cmuxterm.app",
    "~/Library/HTTPStorages/com.cmuxterm.app",
    "~/Library/Preferences/com.cmuxterm.app.plist",
    "~/Library/WebKit/com.cmuxterm.app",
  ]
end
