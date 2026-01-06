cask "maestro" do
  arch arm: "-arm64"

  version "0.14.1"
  sha256 arm:   "0afde8024c8ad25517a50d106903c5474fb99b90eeb7589dcc17990528be31f7",
         intel: "4f0ac0f35ab786b524e56538fec56013d91df28e8bd0f08c400ba2ce01ada973"

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
