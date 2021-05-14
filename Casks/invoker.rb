cask "invoker" do
  version "2.4.0"
  sha256 "45babb26b0d1199803b23cd5eac8cfc711f27070851f1c5426daba827c64d49a"

  url "https://invokerdev.fra1.digitaloceanspaces.com/invoker/Invoker-#{version}.dmg",
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
