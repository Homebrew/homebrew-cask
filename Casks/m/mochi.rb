cask "mochi" do
  arch arm: "-arm64"

  version "1.18.11"
  sha256 arm:   "233271f0832e5ffccadc64489309ea5bb3827263cb51295dde9543eac08b0310",
         intel: "06fd0414165564cc470af7431df05d2f6ebb730c9e72206a661aca829a71b66e"

  url "https://mochi.cards/releases/Mochi-#{version}#{arch}.dmg"
  name "Mochi"
  desc "Study notes and flashcards using spaced repetition"
  homepage "https://mochi.cards/"

  livecheck do
    url "https://mochi.cards/releases/latest-mac.yml"
    strategy :electron_builder
  end

  app "Mochi.app"

  zap trash: [
    "~/Library/Application Support/mochi",
    "~/Library/Logs/Mochi",
    "~/Library/Preferences/com.msteedman.mochi.plist",
    "~/Library/Saved Application State/com.msteedman.mochi.savedState",
  ]
end
