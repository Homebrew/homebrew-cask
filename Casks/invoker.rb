cask "invoker" do
  arch arm: "arm64", intel: "x64"

  version "2.11.0"
  sha256  arm:   "033ea9bc6a0e4e9bd0ab9de8308b62dbb48f659bf4638b14ad30198990716ffc",
          intel: "2362dc8274f3e6db732c9bba59843f056e961f3762aa63be474418ca9d750c94"

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
