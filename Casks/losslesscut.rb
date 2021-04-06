cask "losslesscut" do
  version "3.34.3"
  sha256 "2592f7690bed19e7e2409d710a569f56601c4cba48fd43544dd9fd2ce630c4ad"

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
