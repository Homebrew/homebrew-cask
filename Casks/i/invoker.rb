cask "invoker" do
  arch arm: "-arm64"

  version "2.14.0"
  sha256  arm:   "387b2b32eed1f8e0a4fb70607ab5a3da2a0d5e25ab26c92dc0516f7a8c352f37",
          intel: "7ccf7d29ec2bb1c6170821dddfbe68af4ac4059f4a8e2edf5f315ead7e7bb552"

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
