cask "mochi" do
  arch arm: "-arm64"

  version "1.15.26"
  sha256 arm:   "7e3d9c993268be476f65d0a1d70b281ee7deb0f0c9451087373aa0bec49168bc",
         intel: "bf514e36502cc864e3ef28d50728261443829f4fce0437ade1ee295b660bc2c5"

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
