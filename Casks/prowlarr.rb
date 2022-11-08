cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "0.4.8.2072"
  sha256 arm:   "ae2fe7d90a527b522da3271b613cae097b07cb59a79113aaa0d306970424a1b8",
         intel: "d29f53c8afad628914f9e99e125c09cf1dcaf8e7ddd333f3e44aa40ee97f089c"

  url "https://github.com/Prowlarr/Prowlarr/releases/download/v#{version}/Prowlarr.develop.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Prowlarr/Prowlarr/"
  name "Prowlarr"
  desc "Indexer manager/proxy for various PVR apps"
  homepage "https://prowlarr.com/"

  depends_on macos: ">= :high_sierra"

  app "Prowlarr.app"

  # No zap stanza required
end
