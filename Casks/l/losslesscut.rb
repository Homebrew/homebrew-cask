cask "losslesscut" do
  arch arm: "arm64", intel: "x64"

  version "3.56.0"
  sha256 arm:   "c7e5c4e125d52c7703be3fb140b5fe208f639ed0706ceb8be35c007af3182aa8",
         intel: "27caf8daec2367d348b83ef1dfd0908a9bc90c66b562d92e72665e74be350d5d"

  url "https://github.com/mifi/lossless-cut/releases/download/v#{version}/LosslessCut-mac-#{arch}.dmg"
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
