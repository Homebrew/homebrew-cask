cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.10.14"
  sha256 arm:   "9efbd89ff4bb7e4cca951d665be2c900d972cdc55a552570c88c6c866b2c1b9d",
         intel: "c2bfaa7d41ead817f4ab8092557a5356ab88491c0218d9b4a9ba2e8624865fa5"

  url "https://github.com/logseq/logseq/releases/download/#{version}/logseq-darwin-#{arch}-#{version}.dmg"
  name "Logseq"
  desc "Privacy-first, open-source platform for knowledge sharing and management"
  homepage "https://github.com/logseq/logseq"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Logseq.app"

  zap trash: [
    "~/Library/Application Support/Logseq",
    "~/Library/Logs/Logseq",
    "~/Library/Preferences/com.electron.logseq.plist",
    "~/Library/Saved Application State/com.electron.logseq.savedState",
  ]
end
