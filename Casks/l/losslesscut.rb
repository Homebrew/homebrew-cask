cask "losslesscut" do
  arch arm: "arm64", intel: "x64"

  version "3.61.0"
  sha256 arm:   "501848f73873edefe2b04a0a221156f654d00ffda5da248fdd8cdc251bae3daa",
         intel: "919740bbbb0898bff4dd2c3ecdda1aeb930d48564a4647f6a82ae45883dea77a"

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
