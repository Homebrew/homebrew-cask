cask "blockstream" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.30"
  sha256 arm:   "f5d922274d1f90017f16ac141f3ae224a3e958c373a7db630fb80a534ebe8716",
         intel: "3ca2201ca5817908aa252bb93418940c46f1b04a3bdac0388266a313698e9b1d"

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
