cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.8.1"

  on_intel do
    sha256 "29f59ee297fe89aa31fca3624101d6f17d98872e2c4141d39e9f9ce83989a8e9"
  end
  on_arm do
    sha256 "4390193fb36c35ac743b58b86e32b5b08395875e6991aa936f706055d4b38574"
  end

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
