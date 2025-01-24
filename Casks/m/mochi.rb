cask "mochi" do
  arch arm: "-arm64"

  version "1.18.7"
  sha256 arm:   "db4bd4124e35b0c7fc2ea7abf2b8a7a8e4df3602737d9fdd3bb7dc77f4e50a7a",
         intel: "303b8a43798a75e2b09bb9425c4bbabc60c64665e5395cd9bdcacd336318194c"

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
