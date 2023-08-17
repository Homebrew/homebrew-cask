cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.9.14"
  sha256 arm:   "402ba0978fb20c17fb55a55feb3ae66fe5fcebec70e64a6446913d4e5bf92514",
         intel: "a78a2f3bdc1a9e97a89b6f026a7e6083ef70c95c8c48155d270bef37ef281a40"

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
