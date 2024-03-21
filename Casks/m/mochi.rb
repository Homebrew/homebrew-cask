cask "mochi" do
  arch arm: "-arm64"

  version "1.17.2"
  sha256 arm:   "912ee17be3cda08ea91c4fd77c85b6cc31d7a1bdcec665f0c0f853fbebd39d03",
         intel: "5c8cdf973c88615b60aec96577fc6ee55f2232da66d28127e635bd0371f6f3ba"

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
