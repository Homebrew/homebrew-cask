cask "losslesscut" do
  version "3.32.0"
  sha256 "dbb5ce7bb7b21af7cddade22ac2e2a096d0f881c87cc901fb5ec58b898f3a88c"

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
