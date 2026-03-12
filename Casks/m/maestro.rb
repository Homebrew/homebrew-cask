cask "maestro" do
  arch arm: "arm64", intel: "x64"

  version "0.15.2"
  sha256 arm:   "79a9a10282b56a94aaa60fb51a27de68f2aff1f9eb0a11650946874c0d27729b",
         intel: "44dff219effd6648b723edcff4885459fc52972b4bc4b218b09782376e03b40f"

  url "https://github.com/pedramamini/Maestro/releases/download/v#{version}/Maestro-#{version}-#{arch}-mac.dmg",
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
