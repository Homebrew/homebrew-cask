cask "invoker" do
  version "2.5.2"
  sha256 "c43f5cfbe0b0678b72e0a48d1f00dd0c4bf7b54833aa3b7014faf04b0888d8a5"

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
