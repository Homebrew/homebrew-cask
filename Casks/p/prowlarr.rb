cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "1.9.4.4039"
  sha256 arm:   "1824f47e07c0b8f08bedc1592b9fc075b966b14c1f4a6fae85e3c78b9ed4150b",
         intel: "4ca417871b30c726cd5ad988114f5a6a52c7a5bae4260cce78c5e31f40318837"

  url "https://github.com/Prowlarr/Prowlarr/releases/download/v#{version}/Prowlarr.master.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Prowlarr/Prowlarr/"
  name "Prowlarr"
  desc "Indexer manager/proxy for various PVR apps"
  homepage "https://prowlarr.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Prowlarr.app"

  zap trash: "~/.config/Prowlarr"
end
