cask "moderndeck" do
  version "10.0.0"
  sha256 "f4f09af5ae7a71bbcb3e660ba6ab664fe33c016bc14f94e129a2013f16e208b6"

  url "https://github.com/dangeredwolf/ModernDeck/releases/download/v#{version}/ModernDeck-universal.dmg",
      verified: "github.com/dangeredwolf/ModernDeck"
  name "ModernDeck"
  desc "Modified version of TweetDeck with a material inspired theme"
  homepage "https://moderndeck.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "ModernDeck.app"

  zap trash: [
    "~/Library/Application Support/ModernDeck",
    "~/Library/Logs/ModernDeck",
  ]
end
