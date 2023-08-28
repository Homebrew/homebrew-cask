cask "mochi" do
  arch arm: "-arm64"

  version "1.15.27"
  sha256 arm:   "476882901079984ca243b800e65dde9eaf2850fe2d190454c11be37fb80b4e7b",
         intel: "42c65adf1d93e386865fe87411c3cf535acb943a92ae88d342ce89c6a29d7b85"

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
