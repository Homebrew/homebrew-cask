cask "losslesscut" do
  version "3.27.0"
  sha256 "6e21094c7800d6d3926b3f4b1a08807668dc4b5c98cec898bc790771a0b4275a"

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
