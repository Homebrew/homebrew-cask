cask "losslesscut" do
  arch arm: "arm64", intel: "x64"

  version "3.51.1"
  sha256 arm:   "66ae2a0356b96c78c74bb583a0a5bb62d14552531a90b1cb48b5556ca8416006",
         intel: "0ce1c08c5f92f2c14085808ee56a6988c48a4dcac8d4ece6de39e3ab9979f282"

  url "https://github.com/mifi/lossless-cut/releases/download/v#{version}/LosslessCut-mac-#{arch}.dmg"
  name "LosslessCut"
  desc "Trims video and audio files losslessly"
  homepage "https://github.com/mifi/lossless-cut"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "LosslessCut.app"

  zap trash: [
    "~/Library/Application Support/LosslessCut",
    "~/Library/Logs/LosslessCut",
  ]
end
