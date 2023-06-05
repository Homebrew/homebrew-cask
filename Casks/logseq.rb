cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.9.8"
  sha256 arm:   "a7b4bdee18101ee40a4600b10acb286d13652a73dd788e1e0048376998b27258",
         intel: "7ab1203949f8546ab3bb19415a03364903b30a694909a745978b1ccdc93a94c0"

  url "https://github.com/logseq/logseq/releases/download/#{version}/logseq-darwin-#{arch}-#{version}.dmg"
  name "Logseq"
  desc "Privacy-first, open-source platform for knowledge sharing and management"
  homepage "https://github.com/logseq/logseq"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Logseq.app"

  zap trash: [
    "~/Library/Application Support/Logseq",
    "~/Library/Logs/Logseq",
    "~/Library/Preferences/com.electron.logseq.plist",
    "~/Library/Saved Application State/com.electron.logseq.savedState",
  ]
end
