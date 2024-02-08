cask "losslesscut" do
  arch arm: "arm64", intel: "x64"

  version "3.59.1"
  sha256 arm:   "758551cf4903e5cbc693d72365ef7a0c39a4d6e06362d94cfbbb58da0a3764b4",
         intel: "4819144b3aa4d37786f3eb6cdcc8c401e5a25cbe4cece72c64b64dfec1ea7a7a"

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
