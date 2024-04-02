cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.10.8"
  sha256 arm:   "281ae8f0cde55f687b898236944f820609828e154d4e530a19003e15d1df90e4",
         intel: "79d2833aec056944144888d374a426e7f87df235a8528009f53da383bf04ef3d"

  url "https://github.com/logseq/logseq/releases/download/#{version}/logseq-darwin-#{arch}-#{version}.dmg"
  name "Logseq"
  desc "Privacy-first, open-source platform for knowledge sharing and management"
  homepage "https://github.com/logseq/logseq"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Logseq.app"

  zap trash: [
    "~/Library/Application Support/Logseq",
    "~/Library/Logs/Logseq",
    "~/Library/Preferences/com.electron.logseq.plist",
    "~/Library/Saved Application State/com.electron.logseq.savedState",
  ]
end
