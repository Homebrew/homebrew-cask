cask "invoker" do
  arch arm: "-arm64"

  version "2.13.2"
  sha256  arm:   "0e926609ab75088d231fdfa525b4aad0133c219619a1e94f0332702f6761b867",
          intel: "1bacfdebb5745afb4d16760a3d12662bf0726b7e96414d36c88756ff19e99085"

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
