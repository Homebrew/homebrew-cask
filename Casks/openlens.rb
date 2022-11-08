cask "openlens" do
  arch arm: "-arm64"

  version "6.1.16"
  sha256 arm:   "a869d9617079d6c27c838a411416729d9e5d7f06749f664113eeedb562459cbc",
         intel: "a322f190450885b14ca878c483ed659ef377bf5debffc106eb6f9f993bade5d2"

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
