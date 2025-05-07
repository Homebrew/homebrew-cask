cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.10.10"
  sha256 arm:   "7a9e40d8617dbf1d70bf6cf018ee8a737e35ca81bb896142bef271409419d96f",
         intel: "40d62d82a797a3c269bea4cde43f015473cb311d2a629ff4d64bd0e6c7d5b97d"

  url "https://github.com/logseq/logseq/releases/download/#{version}/logseq-darwin-#{arch}-#{version}.dmg"
  name "Logseq"
  desc "Privacy-first, open-source platform for knowledge sharing and management"
  homepage "https://github.com/logseq/logseq"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Logseq.app"

  zap trash: [
    "~/Library/Application Support/Logseq",
    "~/Library/Logs/Logseq",
    "~/Library/Preferences/com.electron.logseq.plist",
    "~/Library/Saved Application State/com.electron.logseq.savedState",
  ]
end
