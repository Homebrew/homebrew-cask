cask "openlens" do
  arch arm: "-arm64"

  version "6.4.11"
  sha256 arm:   "5201bf99200fd7f1298d838f78b02f081cb53b869da6890d3411c142a0221e0d",
         intel: "47c91b79d2d52f66a410f37fd0a49b68845abdbad67140f2f4c2f4b214d26baf"

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
