cask "losslesscut" do
  version "3.24.0"
  sha256 "298efa2b8068f5369846055583b4b4c89f2918525b8ad4b74fb54105df502b43"

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
