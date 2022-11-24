cask "invoker" do
  arch arm: "arm64", intel: "x64"

  version "2.10.0"
  sha256  arm:   "86270d221a3da8917a8ace738070d5583d5d43f7a7efae64d2e15d049e0ab54b",
          intel: "7b5d2323aaac1ae0c0fd142698c340f741ce0a57ccd9839bca4aaece0913544d"

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
