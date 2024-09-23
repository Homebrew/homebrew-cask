cask "monarch" do
  arch arm: "arm64", intel: "x64"

  version "0.7.5"
  sha256 arm:   "5cfa5a48b74a2816baa179e20c5c38194dee8597f3f1261d310f565fb8373cf2",
         intel: "cd9a28e35b845e2c886cb742a4d355edd951ea5840970a5ef8563156a9e35b56"

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
