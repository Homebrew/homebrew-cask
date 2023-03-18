cask "openlens" do
  arch arm: "-arm64"

  version "6.4.7"
  sha256 arm:   "e84b6a634a54259df9636803c46030640b56c892dc8bdff48583fc09161e78d8",
         intel: "dd6802c8ef36e547955f0372c7fbbb9f9b952b5319d6720f2c35823f1d47430c"

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
