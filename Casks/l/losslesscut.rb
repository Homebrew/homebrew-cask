cask "losslesscut" do
  arch arm: "arm64", intel: "x64"

  version "3.65.0"
  sha256 arm:   "836e42ac23dec2bb05fa3437623630897a05193f2cd605263b57fedef6297ad3",
         intel: "679c3a2a25450895fbf6d556aeadeac937470f761adbd26f90a20b70cfc08a51"

  url "https://github.com/mifi/lossless-cut/releases/download/v#{version}/LosslessCut-mac-#{arch}.dmg"
  name "LosslessCut"
  desc "Trims video and audio files losslessly"
  homepage "https://github.com/mifi/lossless-cut"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "LosslessCut.app"

  zap trash: [
    "~/Library/Application Support/LosslessCut",
    "~/Library/Logs/LosslessCut",
  ]
end
