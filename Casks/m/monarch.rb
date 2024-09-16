cask "monarch" do
  arch arm: "arm64", intel: "x64"

  version "0.7.3"
  sha256 arm:   "7fed007a6af21a4c565ac1b65c5cf1ffd81af0122ec9b037968e6dd5d3566d20",
         intel: "1de0ecff1abee71b1576cf986dd730e26230d1304fab3a7b4e1848ae8cd305e7"

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
