cask "mochi" do
  arch arm: "-arm64"

  version "1.21.17"
  sha256 arm:   "d8d003695ce489b5a3c41ca6785d4c7061101fac476aa0cc060d3cd24088d05f",
         intel: "5cce2f41543d42dbeac83bb65b1ffcfd9fbc1f60deb5f0ae7c962b5ffd491c5c"

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
