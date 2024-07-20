cask "monarch" do
  arch arm: "arm64", intel: "x64"

  version "0.6.70"
  sha256 arm:   "9104067a45f5083cf391c6f37bd097516229f49ca958f93d7c7505a1103a6720",
         intel: "f6624a23ce4713b5a876c5588d9fb8eeca02a70deb7584eaa3d9734f3d105f44"

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
