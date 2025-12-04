cask "losslesscut" do
  arch arm: "arm64", intel: "x64"

  version "3.67.2"
  sha256 arm:   "7ab28094b0400cf4ed884abed1e1794fdf1469db41652784432963097b4b7728",
         intel: "469595e81e2531b40c839d308a806d1b68f711c6ec072d462bcc557fd67fa10b"

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
