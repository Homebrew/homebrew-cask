cask "blockstream-green" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.23"
  sha256 arm:   "dcee9f8f60c188a04f1b22169271799ae6f2afeab5be2b21665494d351565c83",
         intel: "81897c32fa7b929ca8665d0ddf2358195f4e57bead77d5486323c4de46a35411"

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
