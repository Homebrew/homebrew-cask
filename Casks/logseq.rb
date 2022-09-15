cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.8.7"
  sha256 arm:   "14473ed21a36785d6054299f877284f9069363b61f2414fcc3c8542bdc677780",
         intel: "97f7b2ec324bd9eec7b87de0f9c14c19d585c42460a226c30b9ed726bf3f295e"

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
