cask "nheko" do
  version "0.10.0"
  sha256 "b7b7af96f6feb9e25986d9ade0aace797bf605957cfdf638be3e06026a02476c"

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
