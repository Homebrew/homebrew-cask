cask "biscuit" do
  arch arm: "-arm64"

  version "1.2.37"
  sha256 arm:   "58fe744bffac692bb9636cbecde868563fd3190932db10b904e9958f73c0e681",
         intel: "d3f38f49bcf6664341aba113df7ba92e56c06640c4cd6545ae5611912084d4af"

  url "https://github.com/agata/dl.biscuit/releases/download/#{version}/Biscuit-#{version}#{arch}.dmg",
      verified: "github.com/agata/dl.biscuit/"
  name "Biscuit"
  desc "Browser to organise apps"
  homepage "https://eatbiscuit.com/"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Biscuit.app"

  zap trash: [
    "~/Library/Application Support/biscuit",
    "~/Library/Logs/Biscuit",
    "~/Library/Preferences/com.eatbiscuit.biscuit.plist",
    "~/Library/Saved Application State/com.eatbiscult.biscult.savedState",
  ]
end
