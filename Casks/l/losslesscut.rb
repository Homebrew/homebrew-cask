cask "losslesscut" do
  arch arm: "arm64", intel: "x64"

  version "3.64.0"
  sha256 arm:   "fcce7269f6500ea0a80f31e98d9042f3409c2fd28c3b9970bf209cab5f5c6918",
         intel: "04ed8aa1801ebdb54bd048b1d649ef68f541916b9c608f3d564b9e5984537176"

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
