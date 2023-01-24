cask "losslesscut" do
  arch arm: "arm64", intel: "x64"

  version "3.49.0"
  sha256 arm:   "60e786d918b973eafc519a91a2c674e9379b51970f36e3395d14fc3c2cea67a9",
         intel: "4fa6dd9211b1530407caba4d530b19512dd6b01a2f51bf40261b2497f0af3e8c"

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
