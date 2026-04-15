cask "mochi" do
  arch arm: "-arm64"

  version "1.21.5"
  sha256 arm:   "fa742c4740961bca42abecd5da33227a3fbb2f846a3de48a11200408afc92283",
         intel: "98e52b3086522cf87151ede534b7c35eda28d5d357e5fa50afc707675308fc2f"

  url "https://download.mochi.cards/releases/Mochi-#{version}#{arch}.dmg"
  name "Mochi"
  desc "Study notes and flashcards using spaced repetition"
  homepage "https://mochi.cards/"

  livecheck do
    url "https://download.mochi.cards/releases/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :big_sur"

  app "Mochi.app"

  zap trash: [
    "~/Library/Application Support/mochi",
    "~/Library/Logs/Mochi",
    "~/Library/Preferences/com.msteedman.mochi.plist",
    "~/Library/Saved Application State/com.msteedman.mochi.savedState",
  ]
end
