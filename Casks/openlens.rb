cask "openlens" do
  arch arm: "-arm64"

  version "6.5.1"
  sha256 arm:   "595c2d76f19c98f3d109e6cb89816d3f6510a7abc905c8c7128378483c06854f",
         intel: "4c2132cb4ee50c145dc4e090ada2e01f57187a879dcbdbd9483d9563413ada41"

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
