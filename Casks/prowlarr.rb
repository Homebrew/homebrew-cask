cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "0.4.10.2111"
  sha256 arm:   "060d968c21103fff88c4770f2edf281624d5f53856c34a742cba51340d5425f5",
         intel: "8fdee05c689666c964faf4d223d8053bc120344e6edd24f1f1d74fdb9f4d6149"

  url "https://github.com/Prowlarr/Prowlarr/releases/download/v#{version}/Prowlarr.develop.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Prowlarr/Prowlarr/"
  name "Prowlarr"
  desc "Indexer manager/proxy for various PVR apps"
  homepage "https://prowlarr.com/"

  depends_on macos: ">= :high_sierra"

  app "Prowlarr.app"

  # No zap stanza required
end
