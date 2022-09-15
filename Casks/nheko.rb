cask "nheko" do
  version "0.10.1"
  sha256 "b2a05b8075bea5606cf8612af7cf678bb5a64819915d98a8885dbe08af473b34"

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
