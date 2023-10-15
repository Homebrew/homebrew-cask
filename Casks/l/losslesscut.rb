cask "losslesscut" do
  arch arm: "arm64", intel: "x64"

  version "3.58.0"
  sha256 arm:   "3e9405df5aac9fd4ce21157339d0e82d4aad8be9b5b91a4142baea2adc4595e1",
         intel: "64d524cf1a454e6b0571d0b8a09583c6faae9e96812b3ec59e6aec6b85b5d818"

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
