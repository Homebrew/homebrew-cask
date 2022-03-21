cask "logseq" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.6.4"

  if Hardware::CPU.intel?
    sha256 "ba49d928065bd99856633cc601bc7b805dc2e9c2f9e6b24ca31c257fa7a89a57"
  else
    sha256 "7f9f975a20944f7e18c6fdc36aa23fa4990fc515becd7950b9816315bcf86edd"
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
