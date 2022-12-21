cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "0.4.11.2143"
  sha256 arm:   "ee2a47e6e19fb27cab791678388709523e2fbd739fe8b8d0f81465e36cbc3eec",
         intel: "ab838e14be667d93d25e6accf1176211f2400f9e2d17e914cd56fe974aef4205"

  url "https://github.com/Prowlarr/Prowlarr/releases/download/v#{version}/Prowlarr.develop.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Prowlarr/Prowlarr/"
  name "Prowlarr"
  desc "Indexer manager/proxy for various PVR apps"
  homepage "https://prowlarr.com/"

  depends_on macos: ">= :high_sierra"

  app "Prowlarr.app"

  # No zap stanza required
end
