cask "blockstream-green" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.26"
  sha256 arm:   "c853401dc5b8f4d2c93b382133456cd23a677ccbf5100fba81cb0c7a3f0c0f8c",
         intel: "210869bc7aa8500e6ae3e77afe28e02af6c404a19cebee8e4118ef08810e8521"

  url "https://github.com/Blockstream/green_qt/releases/download/release_#{version}/BlockstreamGreen-#{arch}.dmg",
      verified: "github.com/Blockstream/green_qt/"
  name "Blockstream Green"
  desc "Multi-platform Bitcoin and Liquid wallet"
  homepage "https://blockstream.com/green/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Blockstream Green.app"

  zap trash: [
    "~/Library/Application Support/Blockstream/Green",
    "~/Library/Caches/Blockstream/Green",
  ]
end
