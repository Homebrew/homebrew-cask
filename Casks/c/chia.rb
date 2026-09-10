cask "chia" do
  arch arm: "-arm64"

  version "2.7.4"
  sha256 arm:   "447e61c99897ffb85381a92dff8df89d9b14453df2e84b50ed519cf976ef2aea",
         intel: "88520e6b1a8c3d67a50200d3427402b87985a1742adc31c0787f4d08e65eaf07"

  url "https://github.com/Chia-Network/chia-blockchain/releases/download/#{version}/Chia-#{version}#{arch}.dmg"
  name "Chia Blockchain"
  desc "GUI Python implementation for the Chia blockchain"
  homepage "https://www.chia.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Chia.app"

  uninstall quit: "net.chia.blockchain"

  zap trash: [
    "~/.chia",
    "~/Library/Application Support/Chia Blockchain",
    "~/Library/Caches/Chia Blockchain",
    "~/Library/Preferences/net.chia.blockchain.plist",
    "~/Library/Saved Application State/net.chia.blockchain.savedState",
  ]
end
