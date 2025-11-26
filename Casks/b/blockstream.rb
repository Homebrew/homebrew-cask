cask "blockstream" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.31"
  sha256 arm:   "ab2b823b9f848cd132b852e45c6e6f6549fdea4867b3e49485fbcaa81843ae4d",
         intel: "47b821a0df94b2020da5c386e4cbb76c93395013835f1c9bb2686dcf60c0deef"

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
