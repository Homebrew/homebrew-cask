cask "logseq" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.6.9"

  if Hardware::CPU.intel?
    sha256 "815af1bb303f89772efa132d55d8cc37bd7109f85fae20d5d8af290ae291ccfd"
  else
    sha256 "51a9d4b1370ec33fa59492b1e337235eca319f351e9b69b1dfb819561f0cd906"
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
