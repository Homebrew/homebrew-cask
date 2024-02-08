cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.10.6"
  sha256 arm:   "fc6145c52d6e70013222594ed054735b207a0fa4b7229911a4be3b6ecbdc574b",
         intel: "b3d1c65336ea495968575ce9a5f8d573c54880b3fbc0b1dea8bff49ebf98c1db"

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
