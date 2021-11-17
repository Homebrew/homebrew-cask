cask "logseq" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.4.6"

  if Hardware::CPU.intel?
    sha256 "08d37337fe52bbdfa3d34a4fbd9034bb45712cfcbfb9c7d93310a05db68aadf2"
  else
    sha256 "fd0b5ded124f417e9d5813478ce39408212291747d4279b6b7867c6c8c64560f"
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
