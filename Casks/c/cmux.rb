cask "cmux" do
  version "0.62.2"
  sha256 "214cf96cd930563ffa43c526852d5c4c40f6a556a8f147fc035673a5cd37d846"

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
