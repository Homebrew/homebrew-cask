cask "losslesscut" do
  arch arm: "arm64", intel: "x64"

  version "3.50.0"
  sha256 arm:   "4b657fd16dc19cd64e0677809df915e9eeee2f6444fcd76858d4caac7d160e6f",
         intel: "be76016acdbfb918996f1eea7b67c598e5d1ff9516fe1ee4f4f604fdcf587019"

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
