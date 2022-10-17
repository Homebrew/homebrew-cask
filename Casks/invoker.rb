cask "invoker" do
  arch arm: "arm64", intel: "x64"

  version "2.10.0"
  sha256  arm:   "9891d409c43f7b71287059952b543890c59fa3ae45938ceb24bc155c1b785a70",
          intel: "fca565c3a6a603e349cb30371682c2e8afd380d23ab7c4f261c5ca3a6a7b7e80"

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
