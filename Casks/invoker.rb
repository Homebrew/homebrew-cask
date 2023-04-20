cask "invoker" do
  arch arm: "arm64", intel: "x64"

  version "2.12.2"
  sha256  arm:   "b5af36c38fb664ab5f5634edca6d528e2c214e21dc98042565dac8f9ea1bb18a",
          intel: "cb10e6ecccb0364fbcf1a4184d61cb7cf1e08609dfe3f84889f7c2c0f21c34be"

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
