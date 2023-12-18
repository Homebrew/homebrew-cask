cask "blockstream-green" do
  version "1.2.9"
  sha256 "1b8589bc997016087ba27ef28f2026626834c91af525ca88bd3841bafcbe4c06"

  url "https://github.com/Blockstream/green_qt/releases/download/release_#{version}/BlockstreamGreen_MacOS_x86_64.zip",
      verified: "github.com/Blockstream/green_qt/"
  name "Blockstream Green"
  desc "Multi-platform Bitcoin and Liquid wallet"
  homepage "https://blockstream.com/green/"

  app "Blockstream Green.app"

  zap trash: [
    "~/Library/Application Support/Blockstream/Green/",
    "~/Library/Caches/Blockstream/Green",
  ]
end
