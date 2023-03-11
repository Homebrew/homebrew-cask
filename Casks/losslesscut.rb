cask "losslesscut" do
  arch arm: "arm64", intel: "x64"

  version "3.53.0"
  sha256 arm:   "af9777370f950977d6dcae13c019888e489ee92562a657d5f644cbf457e736f7",
         intel: "a79a75e9b1e4df584a9d4684e897ba99d6812678560466abca601cdef93e3e38"

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
