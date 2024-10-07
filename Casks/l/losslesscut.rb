cask "losslesscut" do
  arch arm: "arm64", intel: "x64"

  version "3.63.0"
  sha256 arm:   "430173d60eb0d3988d7bc7c7c1f72b01da9b900db69971e985fa9e7050a735aa",
         intel: "268de9cee50db0de692f650cfc2db9f58cacdab4923f75f709a2766629b802bb"

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
