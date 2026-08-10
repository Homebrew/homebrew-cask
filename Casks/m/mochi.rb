cask "mochi" do
  arch arm: "-arm64"

  version "26.8.1"
  sha256 arm:   "806b049517c2a6ef0e8c324f9acda1a1b002205752c858fc7806e7acb320e978",
         intel: "b124c434a88596cdf5285f72dfbd1767d987afb6369519a5ce9f1f2e2d5aa3c3"

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
