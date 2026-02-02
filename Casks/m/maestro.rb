cask "maestro" do
  arch arm: "-arm64"

  version "0.14.5"
  sha256 arm:   "fb2cd6d1fe2d4555ec920a9b9b9adab0add5c3ed5f3431e5b376d7d78f3eec89",
         intel: "a89df742bf3b7e1322e5c5ff5dabb82ec9e64e17aaef4e73400731afdc41e98e"

  url "https://github.com/pedramamini/Maestro/releases/download/v#{version}/Maestro-#{version}#{arch}.dmg",
      verified: "github.com/pedramamini/Maestro/"
  name "Maestro"
  desc "AI agent command center"
  homepage "https://runmaestro.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Maestro.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.maestro.app.sfl*",
    "~/Library/Application Support/maestro",
    "~/Library/Preferences/com.maestro.app.plist",
  ]
end
