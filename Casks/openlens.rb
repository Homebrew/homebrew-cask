cask "openlens" do
  arch arm: "-arm64"

  version "6.1.14"
  sha256 arm:   "494b361504e75b1aca4ca30093da5229737f7c5a1edd6b3a023d311ae3e4ddd8",
         intel: "840bbf00210b81b3290bd6999faf01a4cb09b27802d0aa5a30ccbbcd7735c6f6"

  url "https://github.com/MuhammedKalkan/OpenLens/releases/download/v#{version}/OpenLens-#{version}#{arch}.dmg"
  name "OpenLens"
  desc "Open source build of Lens Kubernetes IDE"
  homepage "https://github.com/MuhammedKalkan/OpenLens/"

  auto_updates true

  app "OpenLens.app"

  zap trash: [
    "~/Library/Application Support/OpenLens",
    "~/Library/Logs/OpenLens",
  ]
end
