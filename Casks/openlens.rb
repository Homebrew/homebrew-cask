cask "openlens" do
  arch arm: "-arm64"

  version "6.4.10"
  sha256 arm:   "e111315c7ab57f82aade86491448635bc0f9b07a5c1b8f90720e0d8e19dd531a",
         intel: "5785f09659439070b59e25201cc359d676161a8a478e897948ceb5c579e14197"

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
