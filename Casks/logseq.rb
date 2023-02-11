cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.8.17"
  sha256 arm:   "48deb9d1357b9ae9f5ba433a4874b8d68c343415e3da3e0c8b1d0e603d7eb93c",
         intel: "e608616d36cf1b157fcff37c92a417966e1620c11318001dd202939c5396e8ff"

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
