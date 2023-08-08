cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.9.13"
  sha256 arm:   "aac581a22152a4f78fde1079999b35e8a1e46a9a391bebb9fa00273b9b806d6f",
         intel: "10d9a80f2d5f8fd155f921f0371881d7a16513ec9057114fe4a8403fc66a3389"

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
