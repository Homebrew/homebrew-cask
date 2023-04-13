cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.9.2"
  sha256 arm:   "a28a7d34eb068667cc77c2fc789de153537775c0d58a1b7bac9bd72b85b072d6",
         intel: "27fd77b60c81c1958fb48e448ab95badb86c97c03cc449437eaffbd2d7f76f4d"

  url "https://github.com/logseq/logseq/releases/download/#{version}/logseq-darwin-#{arch}-#{version}.dmg"
  name "Logseq"
  desc "Privacy-first, open-source platform for knowledge sharing and management"
  homepage "https://github.com/logseq/logseq"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Logseq.app"

  zap trash: [
    "~/Library/Application Support/Logseq",
    "~/Library/Logs/Logseq",
    "~/Library/Preferences/com.electron.logseq.plist",
    "~/Library/Saved Application State/com.electron.logseq.savedState",
  ]
end
