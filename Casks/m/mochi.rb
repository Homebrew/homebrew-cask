cask "mochi" do
  arch arm: "-arm64"

  version "1.16.4"
  sha256 arm:   "3399cd206f4bca4dbc4c51c6214db7b9c37cd3ecd900bc58838633f16c8aedb9",
         intel: "f1372ee4979fb19ca18773c708db05f707f88f6dfa0eff5f82c334ccc8346411"

  url "https://mochi.cards/releases/Mochi-#{version}#{arch}.dmg"
  name "Mochi"
  desc "Study notes and flashcards using spaced repetition"
  homepage "https://mochi.cards/"

  livecheck do
    url :homepage
    regex(/href=.*?Mochi[._-]?v?(\d+(?:\.\d+)+)#{arch}\.dmg/i)
  end

  app "Mochi.app"

  zap trash: [
    "~/Library/Application Support/mochi",
    "~/Library/Logs/Mochi",
    "~/Library/Preferences/com.msteedman.mochi.plist",
    "~/Library/Saved Application State/com.msteedman.mochi.savedState",
  ]
end
