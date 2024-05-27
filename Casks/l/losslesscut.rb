cask "losslesscut" do
  arch arm: "arm64", intel: "x64"

  version "3.61.1"
  sha256 arm:   "fea6b63f447bc51cc38273caaa478a37a96b0db3e0f56b99fcd9dce75353cda3",
         intel: "c99626339df70fd57333e6b46e7633fdaaa871a10954539380b5a36d018e411d"

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
