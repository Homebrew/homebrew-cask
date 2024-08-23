cask "monarch" do
  arch arm: "arm64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "e0fbe41beddaaecd3b85ce6a55441285b4dc2e06c3135f29cc09e5041fbc4712",
         intel: "2f521eb07ca08075741efd0b4b6e9d0ec3aa843f80676695bf2631d38b2c0170"

  url "https://monarchlauncher.s3.amazonaws.com/#{arch}/monarch-#{version}.dmg",
      verified: "monarchlauncher.s3.amazonaws.com/"
  name "Monarch"
  desc "Spotlight Search"
  homepage "https://monarchlauncher.com/"

  livecheck do
    url "https://monarchlauncher.s3.amazonaws.com/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :monterey"

  app "Monarch.app"

  zap trash: [
    "~/Library/Application Support/monarch",
    "~/Library/Saved Application State/com.electron.monarch.savedState",
  ]
end
