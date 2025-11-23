cask "blockstream" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.28"
  sha256 arm:   "2574d3a2124621f8a568f41e19b3780005f34750ec10295cd923d0846505f674",
         intel: "188f4e3c66d8b293de84a324fbd9f88c79f2b62b830abc0ea7f330fa4d01a302"

  url "https://github.com/Blockstream/green_qt/releases/download/release_#{version}/Blockstream-#{arch}.dmg",
      verified: "github.com/Blockstream/green_qt/"
  name "Blockstream Green"
  desc "Multi-platform Bitcoin and Liquid wallet"
  homepage "https://blockstream.com/green/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Blockstream.app"

  zap trash: [
    "~/Library/Application Support/Blockstream/Green",
    "~/Library/Caches/Blockstream/Green",
  ]
end
