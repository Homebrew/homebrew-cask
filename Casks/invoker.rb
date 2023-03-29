cask "invoker" do
  arch arm: "arm64", intel: "x64"

  version "2.12.1"
  sha256  arm:   "774a8dbe77ad206f15b763433fb57445754214b78d1d2259d1fe908ddb295b6b",
          intel: "76eac0e6fb3deddb62a7352267175dc8c4d6cd248236fe704ff8aeb4df09b64a"

  url "https://invokerdev.fra1.digitaloceanspaces.com/invoker/Invoker-#{version}-#{arch}.dmg",
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
