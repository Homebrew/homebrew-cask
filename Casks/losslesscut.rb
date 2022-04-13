cask "losslesscut" do
  version "3.44.0"
  sha256 "6f6d43f4d4e9bb6930656aac41a6a1e82b45298a4bd04fab8021c47070894813"

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
