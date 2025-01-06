cask "mochi" do
  arch arm: "-arm64"

  version "1.18.3"
  sha256 arm:   "01a2b06737e6c2147cf782253520f4e97dccd7d7e579f57a7a273056c43650ff",
         intel: "f23204199d05ea7d4961ea51d715fbc797bf7e2e27e354b9a6ddffc1cec0fb17"

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
