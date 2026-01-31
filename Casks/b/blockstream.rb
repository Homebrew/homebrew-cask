cask "blockstream" do
  arch arm: "arm64", intel: "x86_64"

  version "3.0.1"
  sha256 arm:   "79721f1d754f4ac9fb6973d9b827bb10bcb79f278307202b6970c549da2efa3e",
         intel: "130f8e0e34312a9558ff235f7dca6b2125ae051655e837d114aaba07dbde271a"

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
