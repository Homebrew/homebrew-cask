cask "invoker" do
  arch arm: "-arm64"

  version "2.14.1"
  sha256  arm:   "2d8bf2e9ed9eadcca26c7b5da2a5b9a917a62dd70d2f223133021d7d1c09ce06",
          intel: "2b400cdfc1c238fcbcf7318d08997d3af333a69fef344312e8358000d9d140bc"

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
