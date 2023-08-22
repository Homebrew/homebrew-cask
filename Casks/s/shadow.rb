cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10146"
  sha256 arm:   "d975412612538f20b8284974fde384034dd8db4765ad5d09dcae05bd051fc522",
         intel: "e5e790829f9980981f9ad15d98ef3b4387223b7fbd3d9af5130074da203172ad"

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
