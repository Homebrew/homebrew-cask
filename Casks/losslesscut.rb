cask "losslesscut" do
  version "3.31.1"
  sha256 "1d8d3aab33b5aaea8374f4fc5b8daddb5596bfbab4ad0746bbb41010a49bfc51"

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
