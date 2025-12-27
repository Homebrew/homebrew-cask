cask "maestro" do
  arch arm: "-arm64"

  version "0.12.1"
  sha256 arm:   "2bbf85402f67c72f27d827125351edbfac5fd4b1a192802539dec451c402e544",
         intel: "ac80dc8a5adbc9bfba596196533ddcb62eb84b0f074eefd039c44086aa70ff12"

  url "https://github.com/pedramamini/Maestro/releases/download/v#{version}/Maestro-#{version}#{arch}.dmg",
      verified: "github.com/pedramamini/Maestro/"
  name "Maestro"
  desc "AI agent command center"
  homepage "https://runmaestro.ai/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Maestro.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.maestro.app.sfl*",
    "~/Library/Application Support/maestro",
    "~/Library/Preferences/com.maestro.app.plist",
  ]
end
