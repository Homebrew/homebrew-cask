cask "losslesscut" do
  version "3.47.1"
  sha256 "fbe826ba822fd16b973ad78e699ac613b818e61b3a23cd5da05af238be2e6e36"

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
