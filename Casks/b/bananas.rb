cask "bananas" do
  version "0.0.22"
  sha256 "ba1a59997dfa31b1216a1648ee3039eb2733d56895d025ce50ffb74a4696a0b6"

  url "https://github.com/mistweaverco/bananas/releases/download/v#{version}/bananas_universal.dmg",
      verified: "github.com/mistweaverco/bananas/"
  name "Bananas Screen Sharing"
  desc "Cross-platform screen sharing tool"
  homepage "https://getbananas.net/"

  depends_on macos: ">= :catalina"

  app "bananas.app"

  zap trash: [
    "~/Library/Application Support/bananas",
    "~/Library/Preferences/net.getbananas.app.plist",
    "~/Library/Saved Application State/net.getbananas.app.savedState",
  ]
end
