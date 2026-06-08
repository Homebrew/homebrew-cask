cask "blockstream" do
  arch arm: "arm64", intel: "x86_64"

  version "3.4.0"
  sha256 arm:   "e7db314eddbef7c0ac7586c9225398d92beda79ee99eef63f795de64ca018d79",
         intel: "3e77ed6d70ec480a2f43daa5b7450ca81be42937dd29e7543b1992b94258bb77"

  url "https://github.com/Blockstream/green_qt/releases/download/release_#{version}/Blockstream-#{arch}.dmg",
      verified: "github.com/Blockstream/green_qt/"
  name "Blockstream Green"
  desc "Multi-platform Bitcoin and Liquid wallet"
  homepage "https://blockstream.com/green/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Blockstream.app"

  zap trash: [
    "~/Library/Application Support/Blockstream/Green",
    "~/Library/Caches/Blockstream/Green",
  ]
end
