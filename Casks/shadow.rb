cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10101"
  sha256 arm:   "61ddc477c2f2adcaf8bec0c38dd9adc29e4aefdf96f6d0fb1a8b12a7420b9810",
         intel: "580cff329c9288a2bdb10944e67d68f2c0f7852b52d4707b00569476867cec32"

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
