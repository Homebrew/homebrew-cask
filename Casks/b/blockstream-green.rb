cask "blockstream-green" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.12"
  sha256 arm:   "c9c891d62756390b3c9d11f75bf484e1862ca3f4d516e7eee7d0f9c23cf42299",
         intel: "6d5bfd68bd0cf2d2396fe01c722d9e557ab50ced1329bfa6ee77f66d7ef42f0c"

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
    "~/Library/Application Support/Blockstream/Green/",
    "~/Library/Caches/Blockstream/Green",
  ]
end
