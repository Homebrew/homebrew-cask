cask "blockstream-green" do
  version "1.2.8"
  sha256 "9bfee4300aefc6f518f181c83e4af21bbdab7ae8b3fd8e334ea3fbe2c4a3b5ee"

  url "https://github.com/Blockstream/green_qt/releases/download/release_#{version}/BlockstreamGreen_MacOS_x86_64.zip",
      verified: "github.com/Blockstream/green_qt/"
  name "Blockstream Green"
  desc "Multi-platform, feature-rich Bitcoin and Liquid wallet"
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
