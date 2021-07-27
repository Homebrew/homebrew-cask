cask "losslesscut" do
  version "3.37.0"
  sha256 "02ecfe9053254ebc8cc7c918a1726637b38cbb241aa74f96464c029c9bb2817e"

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
