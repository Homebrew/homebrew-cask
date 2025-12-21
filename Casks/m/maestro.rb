cask "maestro" do
  arch arm: "-arm64"

  version "0.10.1"
  sha256 arm:   "1cd2b01c5e72d20022928d6545ae0224ea7b3d06bf9d7e0752fe9798f71c509b",
         intel: "42e83e59f99292704e9f3772c8a0b19ae3d99b36e0d0751d0a13da35d793b56f"

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
