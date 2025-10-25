cask "losslesscut" do
  arch arm: "arm64", intel: "x64"

  version "3.66.1"
  sha256 arm:   "41292c7db478285a1eec92a1bbd5e3d9f2032f4aface547a2e2c835c139acfff",
         intel: "92e4a8782ba845df8456adb5f04d5389b27dd66a083f69a3f52eb2184ac7b918"

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
