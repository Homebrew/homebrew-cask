cask "invoker" do
  arch arm: "-arm64"

  version "2.13.3"
  sha256  arm:   "5adfba266c85c17ce979b54aff70a72e605ce112effdfb406ae2605d7229f679",
          intel: "d3f7579b0d2773445beb336a061d78cc53f93d1f211b26efdbe07a008d6e6221"

  url "https://invokerdev.fra1.digitaloceanspaces.com/invoker/Invoker-#{version}#{arch}.dmg",
      verified: "invokerdev.fra1.digitaloceanspaces.com/invoker/"
  name "Invoker"
  desc "Utility for managing Laravel applications"
  homepage "https://invoker.dev/"

  livecheck do
    url "https://invokerdev.fra1.digitaloceanspaces.com/invoker/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Invoker.app"

  zap trash: [
    "~/Library/Application Support/Invoker",
    "~/Library/Logs/Invoker",
    "~/Library/Preferences/de.beyondco.invoker.plist",
    "~/Library/Saved Application State/de.beyondco.invoker.savedState",
  ]
end
