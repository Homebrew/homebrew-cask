cask "bananas" do
  version :latest
  sha256 :no_check

  url "https://github.com/mistweaverco/bananas/releases/latest/download/bananas_universal.dmg",
      verified: "github.com/mistweaverco/bananas/"
  name "bananas"
  desc "Cross-Platform screen sharing made simple"
  homepage "https://getbananas.net/"

  depends_on macos: ">= :catalina"

  app "bananas.app"

  zap trash: [
    "~/Library/Preferences/net.getbananas.app.plist",
    "~/Library/Saved Application State/net.getbananas.app.savedState",
    "~/Library/Application Support/bananas",
  ]
end
