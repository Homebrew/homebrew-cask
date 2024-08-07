cask "losslesscut" do
  arch arm: "arm64", intel: "x64"

  version "3.62.0"
  sha256 arm:   "48ae03799c204a75c4515ba70cab7baf95029eea09f0c9164b51786d245dba4e",
         intel: "36a571d1733d62680be6b08170e5fe6fc6039eef850e088b637c9feb5d68aa91"

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
