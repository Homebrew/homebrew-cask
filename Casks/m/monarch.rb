cask "monarch" do
  arch arm: "arm64", intel: "x64"

  version "0.7.6"
  sha256 arm:   "586cdfaca803008129505ce4824c202c7f1cc968829cf914948d59e264670713",
         intel: "5cbcfd05489e07dcec78f63296205697847c7de2ceefb9b66e9741480290dcc3"

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
