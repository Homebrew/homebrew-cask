cask "openlens" do
  arch arm: "-arm64"

  version "6.4.15"
  sha256 arm:   "c01d0dd08c7ad23773398e1042a680832d4377d46c850b134642f4a6c0fa3b2f",
         intel: "e690b5f47f7e1e7997bd77e44f5a2a2f032006d25d7445ab68414378c27432a0"

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
