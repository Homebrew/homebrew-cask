cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "0.4.7.2016"
  sha256 arm:   "9ed05eef26d93a8f35f0744604e3772d65c851ac818121ff403212fef1e0cba4",
         intel: "3eaac28b12e82dd2f8715933981e95a190b2de9d558962d022f329d41f0069a2"

  url "https://github.com/Prowlarr/Prowlarr/releases/download/v#{version}/Prowlarr.develop.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Prowlarr/Prowlarr/"
  name "Prowlarr"
  desc "Indexer manager/proxy for various PVR apps"
  homepage "https://prowlarr.com/"

  depends_on macos: ">= :high_sierra"

  app "Prowlarr.app"

  # No zap stanza required
end
