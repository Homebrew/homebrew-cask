cask "logseq" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.5.4"

  if Hardware::CPU.intel?
    sha256 "5a343833d193c0a09ef72e9e301986ac10001a276d6aec4fb20cec9cec5ed5b9"
  else
    sha256 "4bb05db30b4cbd6ac143cacc5e545ab5bd34906a6ec15aeda1397c138031fdb2"
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
