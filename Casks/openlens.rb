cask "openlens" do
  arch arm: "-arm64"

  version "6.2.1"
  sha256 arm:   "52c287a264b8a0c3c10a3286a22d171e60d079e9c68a316df470b84075398071",
         intel: "379b3e0ca085a104e48c8168e5f894863105937010fe83b71ecc59b396de4ea1"

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
