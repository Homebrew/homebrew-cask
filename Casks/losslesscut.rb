cask "losslesscut" do
  version "3.38.0"
  sha256 "73a0e67bc7da1f71a58796813c2c6ff8576fbd595ceb3544879734d303462e9f"

  url "https://github.com/mifi/lossless-cut/releases/download/v#{version}/LosslessCut-mac.dmg"
  name "LosslessCut"
  desc "Trimms video and audio files losslessly"
  homepage "https://github.com/mifi/lossless-cut"

  app "LosslessCut.app"

  zap trash: [
    "~/Library/Application Support/LosslessCut",
    "~/Library/Logs/LosslessCut",
  ]
end
