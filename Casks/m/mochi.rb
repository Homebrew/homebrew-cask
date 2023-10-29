cask "mochi" do
  arch arm: "-arm64"

  version "1.16.3"
  sha256 arm:   "378eadad836665c6ed30ac24a4a383bf3b41d2d7f64ff5909a6a0182d84eedeb",
         intel: "fb906ec964a72d2a4e9fafdb617be31cb92452efa05a5c836b68b7c7ed2a7429"

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
