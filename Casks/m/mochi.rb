cask "mochi" do
  arch arm: "-arm64"

  version "1.17.3"
  sha256 arm:   "7315767c8392bdcd04ae60b6aa0c5978855215c5140d29c3c1d974f64d8d40f6",
         intel: "05d7078432d29163fa7e0b4f78be8a6b2272be7507b6af0c0ca864b72dd20d9d"

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
