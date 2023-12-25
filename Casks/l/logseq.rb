cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.10.3"
  sha256 arm:   "6d9d6b1c54cb87de0bd37d3fc3d47f1eea2706e9269c9a0ba0fb0d6a79abcc2e",
         intel: "109689ca382745e56425e5a914776172fee88d163035e2521e5c6d2d7f03fab1"

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
