cask "losslesscut" do
  version "3.48.2"
  sha256 "3f38c4d2824eb8f1b44be980ee980d53731181a1368c03f158437d2783dfa8c4"

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
