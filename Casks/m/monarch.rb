cask "monarch" do
  arch arm: "arm64", intel: "x64"

  version "0.7.7"
  sha256 arm:   "da3078bd22400313c3fafc289e629573f72bc768a8f352b56644d6a2946d4e41",
         intel: "637d3385a5efd3778205286c0297515806525c1458586c5e5e40fa6cb86a79ad"

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
