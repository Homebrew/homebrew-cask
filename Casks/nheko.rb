cask "nheko" do
  version "0.8.2"
  sha256 "e7605f3eccb8a81661efe43c9a9aa4d8678201212584d23fa4e8e9ad13b64c59"

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
