cask "nheko" do
  version "0.8.0"
  sha256 "40f120620ed3495ab42fb2fc490ac8737e5b41320017568710650c5ac03e100a"

  url "https://github.com/Nheko-Reborn/nheko/releases/download/v#{version}/nheko-v#{version}.dmg",
      verified: "github.com/Nheko-Reborn/nheko/"
  appcast "https://github.com/Nheko-Reborn/nheko/releases.atom"
  name "Nheko"
  desc "Desktop client for the Matrix protocol"
  homepage "https://nheko-reborn.github.io/"

  app "Nheko.app"
end
