cask "losslesscut" do
  arch arm: "arm64", intel: "x64"

  version "3.68.0"
  sha256 arm:   "e61c335bed288bc1869b150bbc314298a29bad82edabd1e3c0b2e9323dcf9db0",
         intel: "2b8879906eb933dbd60338d357c8f114976d744b8b0b146bd1bc8c37549f7c99"

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
