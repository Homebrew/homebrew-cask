cask "maestro" do
  arch arm: "-arm64"

  version "0.14.2"
  sha256 arm:   "f73653d8e063eb2c24ac9b79d3f5d36ebfe6c198586c205751fe40f3e8f0ed85",
         intel: "8c5d55b159b1ac2085d21518cbacb9e0a9a3959ab37aab67f3aa7ca5cab32f4b"

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
