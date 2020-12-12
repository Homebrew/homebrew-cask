cask "nheko" do
  version "0.7.2"
  sha256 "33ac688edf3af5aa360e48135fda08238e742d3d12fe518a392e470eb8acb40e"

  url "https://github.com/Nheko-Reborn/nheko/releases/download/v#{version}/nheko-v#{version}.dmg",
      verified: "github.com/Nheko-Reborn/nheko/"
  appcast "https://github.com/Nheko-Reborn/nheko/releases.atom"
  name "Nheko"
  desc "No longer maintained - Desktop client for the Matrix protocol"
  homepage "https://nheko-reborn.github.io/"

  app "Nheko.app"
end
