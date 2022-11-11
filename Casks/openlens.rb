cask "openlens" do
  arch arm: "-arm64"

  version "6.1.19"
  sha256 arm:   "c2c0e376e058732bc538a9ddadfaf35087058b3c454ab0324c32fcdccc6a61f3",
         intel: "61ed06b2fd2a8f7dcdc4cc7a883167d56cc1806bacaf305f61f1a607db6307d6"

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
