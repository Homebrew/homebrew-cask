cask "losslesscut" do
  arch arm: "arm64", intel: "x64"

  version "3.52.0"
  sha256 arm:   "73280df736ab239bf8340fe621cf402de322f74d40acd577c1b38d5a3535732b",
         intel: "92383fc293d9a4cc60e3d02279eae31e379f94c0b082a2977a1008e85b7d6c4a"

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
