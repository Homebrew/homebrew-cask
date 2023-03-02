cask "openlens" do
  arch arm: "-arm64"

  version "6.4.0"
  sha256 arm:   "023316448832da811865bd383ada6e2fb60ee274b3f40df55adad3307793abf3",
         intel: "b4befe2751ccf9565788ee00463907965171b577d8f010ea7f522c2390bcc066"

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
