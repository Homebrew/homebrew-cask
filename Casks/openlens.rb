cask "openlens" do
  arch arm: "-arm64"

  version "6.1.15"
  sha256 arm:   "b29e1012b95e507729970794d2fb70ceaa99da3def15efdde2abee43ea61fe4f",
         intel: "3cbf3847c0333cc07d9b8a60ffa58018ae96dba10bf7b1c6e04bca5cfaca8eb4"

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
