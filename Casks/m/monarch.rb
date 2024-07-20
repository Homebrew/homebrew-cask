cask "monarch" do
  arch arm: "arm64", intel: "x64"

  version "0.6.70"
  sha256 arm:   "e4b557c50f5ffa37ab0d2dc18dca43935bc6a5a6ce919531b2dd656faab79f14",
         intel: "7db2c4940c483e3c96df64f0bb37ae6fcbbda90d45cb61075897031ac1765a8c"

  url "https://monarchlauncher.s3.amazonaws.com/#{arch}/monarch-#{version}.dmg",
      verified: "monarchlauncher.s3.amazonaws.com/"
  name "Monarch"
  desc "Spotlight Search with Superpowers"
  homepage "https://monarchlauncher.com/"

  livecheck do
    url "https://monarchlauncher.s3.amazonaws.com/#{arch}/latest-mac.yml"
    strategy :yaml do |yaml|
      yaml["version"]
    end
  end

  depends_on macos: ">= :monterey"

  app "Monarch.app"

  zap trash: [
    "~/Library/Application Support/monarch",
    "~/Library/Saved Application State/com.electron.monarch.savedState",
  ]
end
