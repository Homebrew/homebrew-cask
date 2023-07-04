cask "openlens" do
  arch arm: "-arm64"

  version "6.5.2-366"
  sha256 arm:   "2c53fa3ccf383e10c8a711ba23a6277800415173ba45ef12597b656c9d818e29",
         intel: "22f94468f4ccfe4f24c0580a04f76baa9edadf7f9a6d735d677f828372c139e7"

  url "https://github.com/MuhammedKalkan/OpenLens/releases/download/v#{version}/OpenLens-#{version}#{arch}.dmg"
  name "OpenLens"
  desc "Open source build of Lens Kubernetes IDE"
  homepage "https://github.com/MuhammedKalkan/OpenLens/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "OpenLens.app"

  zap trash: [
    "~/Library/Application Support/OpenLens",
    "~/Library/Logs/OpenLens",
  ]
end
