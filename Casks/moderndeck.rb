cask "moderndeck" do
  version "9.4.5"
  sha256 "0033851c0c8435e567bdf85a99aff8f7979d7982b84bd77ed4dc07d62eb602d6"

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
end
