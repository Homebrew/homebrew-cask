cask "invoker" do
  arch arm: "arm64", intel: "x64"

  version "2.13.0"
  sha256  arm:   "a13eef9fe4fb4d3bcf6ce0a29b2ab513d80a8bf5921468c4fea7a5b7c66ba84c",
          intel: "cf8dcfa1827a5f0b79bdccf2348a114e7920813440ae2ae5df9486239a1df4db"

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
