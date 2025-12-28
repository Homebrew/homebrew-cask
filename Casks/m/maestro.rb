cask "maestro" do
  arch arm: "-arm64"

  version "0.12.3"
  sha256 arm:   "a93e66aa95a26b418590f8cc1e909859fac96683945cfa077c8ef460b61b36ab",
         intel: "e503a151e359caeb4fe503933c2375b4eeb609f00d6fc8f0f3e840f911288755"

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
