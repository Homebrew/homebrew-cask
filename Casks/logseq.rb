cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.9.9"
  sha256 arm:   "da66a1afd03ee142589ebebcceaa47e97fe47bf82fea9e34fcae69ed22c3d858",
         intel: "aa64ce1dfa08631a9b709b08839b0137fecf53bf964172ed0d8086cab30c45e0"

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
