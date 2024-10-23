cask "monarch" do
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "f6b5ff907f9533a57cd3e59cb2e29f90ee5d620ce7b02009df634800ebfcb128",
         intel: "637d3385a5efd3778205286c0297515806525c1458586c5e5e40fa6cb86a79ad"

  on_arm do
    version "0.7.8"
  end
  on_intel do
    version "0.7.7"
  end

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
