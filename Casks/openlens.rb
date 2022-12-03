cask "openlens" do
  arch arm: "-arm64"

  version "6.2.4"
  sha256 arm:   "a2f7b54fb35338db9e44f13975ea9f4499dfa568eb321c4993da207578f5b80e",
         intel: "1b8c6287b077342925cebc978e7b005660925bcab75f0befebaeec60ea1c040a"

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
