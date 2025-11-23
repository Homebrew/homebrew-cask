cask "losslesscut" do
  arch arm: "arm64", intel: "x64"

  version "3.67.1"
  sha256 arm:   "c7cc4fc8ec0e31a676e3935e1401772e50d10e480fc5e7981261883c641999f4",
         intel: "9235dd3abb7b049773b9e661cd5638064deb5104e298d42d6ea4a99bd77510a6"

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
