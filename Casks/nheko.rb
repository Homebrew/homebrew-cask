cask "nheko" do
  version "0.10.2"
  sha256 "d554bfbc271f5876b379a07c06c5f5d8cd5f781efbb9f8fa1b44a81d59d5fb81"

  url "https://github.com/Nheko-Reborn/nheko/releases/download/v#{version}/nheko-v#{version}.dmg",
      verified: "github.com/Nheko-Reborn/nheko/"
  name "Nheko"
  desc "Desktop client for the Matrix protocol"
  homepage "https://nheko-reborn.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Nheko.app"
end
