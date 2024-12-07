cask "bananas" do
  version "0.0.18"
  sha256 "ab0baff7763112795c6b44e519a6415f8a45b53fa18d23c88ae3a96b223aec28"

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
