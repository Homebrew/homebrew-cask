cask "losslesscut" do
  arch arm: "arm64", intel: "x64"

  version "3.54.0"
  sha256 arm:   "3869a234e600dc1c9b65491b950c6e7a933f46d01eb1deff4c7e067502975b0a",
         intel: "fb7c33a22bf05429bcfc47b0a1449862d38f5bdff45e5c405571575fc11ea17d"

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
