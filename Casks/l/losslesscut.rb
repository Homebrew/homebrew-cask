cask "losslesscut" do
  arch arm: "arm64", intel: "x64"

  version "3.67.0"
  sha256 arm:   "19b0900aa644e7e571060060e2525e57b5b5cc6ba28430cc475e9c096fc88ee3",
         intel: "aa857ef78d0c0bf71a55f8e79d8c59f1b8d158e88f45795551ced83509367c38"

  url "https://github.com/mifi/lossless-cut/releases/download/v#{version}/LosslessCut-mac-#{arch}.dmg"
  name "LosslessCut"
  desc "Trims video and audio files losslessly"
  homepage "https://github.com/mifi/lossless-cut"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "LosslessCut.app"

  zap trash: [
    "~/Library/Application Support/LosslessCut",
    "~/Library/Logs/LosslessCut",
  ]
end
