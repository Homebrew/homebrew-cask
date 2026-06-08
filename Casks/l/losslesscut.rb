cask "losslesscut" do
  arch arm: "arm64", intel: "x64"

  version "3.69.0"
  sha256 arm:   "c7801b482df3be0384acc8171d5a7d16cce70d1588871e344b155aaca39fa58b",
         intel: "ab828d1a652c895661b15b682d81106562e0f11fabcb8c2d1e4bf2c4fdddf64a"

  url "https://github.com/mifi/lossless-cut/releases/download/v#{version}/LosslessCut-mac-#{arch}.dmg"
  name "LosslessCut"
  desc "Trims video and audio files losslessly"
  homepage "https://github.com/mifi/lossless-cut"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "LosslessCut.app"

  zap trash: [
    "~/Library/Application Support/LosslessCut",
    "~/Library/Logs/LosslessCut",
  ]
end
