cask "blockstream" do
  arch arm: "arm64", intel: "x86_64"

  version "3.2.0"
  sha256 arm:   "0a2e31e142a48f3c8c6cf188efd1de2974e28ba9d38e94ed264d50df8082759d",
         intel: "a5cd3aebd099e9a635f691677d18b920d530fb6be9cc782985e04f0e176ca8fc"

  url "https://github.com/Blockstream/green_qt/releases/download/release_#{version}/Blockstream-#{arch}.dmg",
      verified: "github.com/Blockstream/green_qt/"
  name "Blockstream Green"
  desc "Multi-platform Bitcoin and Liquid wallet"
  homepage "https://blockstream.com/green/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Blockstream.app"

  zap trash: [
    "~/Library/Application Support/Blockstream/Green",
    "~/Library/Caches/Blockstream/Green",
  ]
end
