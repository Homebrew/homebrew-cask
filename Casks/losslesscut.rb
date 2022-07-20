cask "losslesscut" do
  version "3.46.2"
  sha256 "df9d0c1d6c328c276f22fe96ea55fa1ebe8f2c3880c0efdef8a5b4c8a8bf6287"

  url "https://github.com/mifi/lossless-cut/releases/download/v#{version}/LosslessCut-mac-x64.dmg"
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
