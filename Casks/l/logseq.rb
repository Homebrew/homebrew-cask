cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.10.12"
  sha256 arm:   "d1a7bbbfd9197917b5bc645d58cb57905937eb4c1e4cdd293e538ba5e4135ac3",
         intel: "f2bf1a81139d547918443a4745095b886df77a9137297670df9c96d409f27687"

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
