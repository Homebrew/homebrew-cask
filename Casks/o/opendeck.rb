cask "opendeck" do
  version "2.6.0"
  arch arm: "aarch64", intel: "x64"
  sha256 arm:   "b72353667ba7696557b61c83b20b9c157bdcb300fa71cc7a0448426f032924f5",
         intel: "efdf914330c3b54bfadd347879fc876cf7fd1c620d93cf723cb848505b978edd"
  url "https://github.com/nekename/OpenDeck/releases/download/v#{version}/OpenDeck_#{version}_#{arch}.dmg"
  name "OpenDeck"
  desc "Stream controller utility supporting Elgato Stream Deck plugins"
  homepage "https://github.com/nekename/OpenDeck"

  app "OpenDeck.app"

  zap trash: [
    "~/Library/Application Support/opendeck",
    "~/Library/Logs/opendeck",
    "~/Library/Preferences/opendeck.plist",
  ]
end
