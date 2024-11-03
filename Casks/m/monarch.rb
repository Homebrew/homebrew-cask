cask "monarch" do
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "f5fe4bf861711b9911cc0ef2875f8e067d06d58acec2b9552351725fdd3a9467",
         intel: "637d3385a5efd3778205286c0297515806525c1458586c5e5e40fa6cb86a79ad"

  on_arm do
    version "0.7.9"
  end
  on_intel do
    version "0.7.7"
  end

  url "https://storage.googleapis.com/monarchlauncher/#{arch}/monarch-#{version}.dmg",
      verified: "storage.googleapis.com/monarchlauncher/"
  name "Monarch"
  desc "Spotlight Search"
  homepage "https://monarchlauncher.com/"

  livecheck do
    url "https://storage.googleapis.com/monarchlauncher/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :monterey"

  app "Monarch.app"

  zap trash: [
    "~/Library/Application Support/monarch",
    "~/Library/Saved Application State/com.electron.monarch.savedState",
  ]
end
