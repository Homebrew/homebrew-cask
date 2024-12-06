cask "bananas" do
  version "0.0.17"
  sha256 "f1ef079df2c74917fb568e26ed5945a948fc7cfca3011ee415d31ec786a407b5"

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
