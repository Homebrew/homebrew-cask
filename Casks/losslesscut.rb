cask "losslesscut" do
  version "3.45.0"
  sha256 "ebf07832496e09bda6d66ff7e51e575dfa24192065ffccdf89d92f99baae585b"

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
