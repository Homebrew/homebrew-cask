cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.9.20"
  sha256 arm:   "87923565221da3bc867e1af2252caf4054a8d0e20f7dc1717c3a1221a238f083",
         intel: "08e28ebafa006738c75c0193e02ef44f4004bbc1eb15d3888bcbfa41778c85bc"

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
