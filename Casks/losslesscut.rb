cask "losslesscut" do
  version "3.29.1"
  sha256 "2ea0f3bcb7ae2ac7bd57e5cf57599862a90828d0dea619746bbaacb94bc757f3"

  url "https://github.com/mifi/lossless-cut/releases/download/v#{version}/LosslessCut-mac.dmg"
  appcast "https://github.com/mifi/lossless-cut/releases.atom"
  name "LosslessCut"
  desc "Trimms video and audio files losslessly"
  homepage "https://github.com/mifi/lossless-cut"

  app "LosslessCut.app"

  zap trash: [
    "~/Library/Application Support/LosslessCut",
    "~/Library/Logs/LosslessCut",
  ]
end
