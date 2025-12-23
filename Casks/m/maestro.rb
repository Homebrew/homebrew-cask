cask "maestro" do
  arch arm: "-arm64"

  version "0.11.0"
  sha256 arm:   "3e363af650f47f949811fdd6b6e1d5369103c06a38af1bf3daf77978b4b46d09",
         intel: "f0a2bbaeeb0473c2b002e6cc1274d61cc6230c8dd45292810015f297443ed3bc"

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
