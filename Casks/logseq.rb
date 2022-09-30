cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.8.8"
  sha256 arm:   "0274f7b758dfd003da6ae98e03c505a882a089d0b697a087f169cc54238e86e3",
         intel: "90e9e8f3c27dd904e1f2dea9ed2582c16e9047957b922fa04b201e46a8fdcdb8"

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
