cask "maestro" do
  arch arm: "-arm64"

  version "0.14.5"
  sha256 arm:   "3821039e8e7aacb1f072ec3bf2c90bc28459c9c3bc467a8250d1402a61ff7d56",
         intel: "4f555aecda84bb8f57fced4e8e66d2de82d8c6366b076bc569ad34bc9d954d8a"

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
