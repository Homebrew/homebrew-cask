cask "monarch" do
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "cdf327fbb2682e6a6f6ef0d3f65c2a734dfe2546e964e646b94940a656deea79",
         intel: "65a79fc7befb19ad409bc12f584fbf1f3d328a975fbf947778700ddfe2703566"

  on_arm do
    version "0.7.10"
  end
  on_intel do
    version "0.7.10"
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
