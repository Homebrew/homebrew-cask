cask "maestro" do
  arch arm: "-arm64"

  version "0.14.0"
  sha256 arm:   "c28c2a0ee31c187b22cf0bd7e56beb025e98ad69c77494bca09bd1fde997df5f",
         intel: "36edf6a9daa4e7a72fe26d1886dbddd9a4aa5485d154f4b3a859dd7af2e91c3d"

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
