cask "blockstream-green" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.19"
  sha256 arm:   "2b96cb468c5f289251b5fb6ff785297ce2d66a131f9e26bca8a6e2fc908391ca",
         intel: "cfa3e7db2585372abff4a20f4072a3abd1b01e1c70efc8ddb83f06a07dee9b3e"

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
