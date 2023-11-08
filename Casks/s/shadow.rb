cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10178"
  sha256 arm:   "08540fec0a3a6685ae03453505ae4582d40039431d2132f1f182d393a3b3c0db",
         intel: "fd30b5ba7dc8b20e9e6c2127cc33587b53896142d0e197c3d040646b09b4c857"

  url "https://update.shadow.tech/launcher/prod/mac/#{arch}/ShadowPC-#{version}.dmg"
  name "Shadow"
  desc "Online virtualized computer"
  homepage "https://shadow.tech/"

  livecheck do
    url "https://update.shadow.tech/launcher/prod/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  app "Shadow PC.app"

  zap trash: [
    "~/Library/Application Support/Shadow",
    "~/Library/Preferences/com.electron.shadow.helper.plist",
    "~/Library/Preferences/com.electron.shadow.plist",
  ]
end
