cask "monarch" do
  arch arm: "arm64", intel: "x64"

  version "0.7.14"
  sha256 arm:   "1d79522451231c24699a3141c8acf78ff2c9fbbc59590cd5c6c029b00801c591",
         intel: "b627239613200f14a88aab803f21786927bdeac4d2fe59152f960f194f70e82e"

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
