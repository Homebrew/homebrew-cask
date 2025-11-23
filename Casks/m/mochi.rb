cask "mochi" do
  arch arm: "-arm64"

  version "1.19.6"
  sha256 arm:   "4865a77b20476ee2a983886bbc6d90b1de3091b214b5d543de15033265cb4639",
         intel: "118e826cbd062db26b4c390200c63d01dc3990de5a02bd01897df2585558dd1a"

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
