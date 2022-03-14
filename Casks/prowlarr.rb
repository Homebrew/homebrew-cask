cask "prowlarr" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.2.0.1448"

  if Hardware::CPU.intel?
    sha256 "ee499053a9e0a3dd1e9520a33c0dbb378cc64d2e93e31228d1c9c1f5b73288ed"
  else
    sha256 "e48498a72902298b857bf223efccb7d8fe5d5192db7141f0821b3de0b2d44b83"
  end

  url "https://github.com/Prowlarr/Prowlarr/releases/download/v#{version}/Prowlarr.develop.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Prowlarr/Prowlarr/"
  name "Prowlarr"
  desc "Indexer manager/proxy for various PVR apps"
  homepage "https://prowlarr.com/"

  depends_on macos: ">= :high_sierra"

  app "Prowlarr.app"

  # No zap stanza required
end
