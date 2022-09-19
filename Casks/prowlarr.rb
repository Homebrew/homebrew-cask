cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "0.4.6.1969"
  sha256 arm:   "2182d54d93cb444d99d34a621d4218b226fe7c7356f907a665bb60fd0b5e6395",
         intel: "51309fac45c8862775eeb634efbed32d5fdd3223dcdc6436b7d08d36a3f1d6bb"

  url "https://github.com/Prowlarr/Prowlarr/releases/download/v#{version}/Prowlarr.develop.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Prowlarr/Prowlarr/"
  name "Prowlarr"
  desc "Indexer manager/proxy for various PVR apps"
  homepage "https://prowlarr.com/"

  depends_on macos: ">= :high_sierra"

  app "Prowlarr.app"

  # No zap stanza required
end
