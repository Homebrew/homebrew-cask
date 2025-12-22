cask "maestro" do
  arch arm: "-arm64"

  version "0.10.2"
  sha256 arm:   "314c04677315c164f225a1346c50d5eb954ddc4f722904f306688a5279de4e89",
         intel: "91ba495960f346abbc6c1cece517d423994cbcd54b1f1c44e404ef6f116b4b8e"

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
