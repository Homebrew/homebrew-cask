cask "mochi" do
  arch arm: "-arm64"

  version "1.21.12"
  sha256 arm:   "1043189df8abe67191638113faf37e1ee009b642165acf4948f4b750da26700a",
         intel: "2bf63eaed83be87bd1afd119a54612bffd8523cd473a76ab5b6e24682213166c"

  url "https://download.mochi.cards/releases/Mochi-#{version}#{arch}.dmg"
  name "Mochi"
  desc "Study notes and flashcards using spaced repetition"
  homepage "https://mochi.cards/"

  livecheck do
    url "https://download.mochi.cards/releases/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :big_sur

  app "Mochi.app"

  zap trash: [
    "~/Library/Application Support/mochi",
    "~/Library/Logs/Mochi",
    "~/Library/Preferences/com.msteedman.mochi.plist",
    "~/Library/Saved Application State/com.msteedman.mochi.savedState",
  ]
end
