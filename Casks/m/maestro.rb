cask "maestro" do
  arch arm: "-arm64"

  version "0.13.1"
  sha256 arm:   "4a10f95f7b5de71f5cd74e4af3b40a8e43f76fa1f8d88808d76c580f4e4ce88d",
         intel: "89783bf7b21470fc32671ae9d2bf523d3718ed1765a4c8b60459210af5dc2e6c"

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
