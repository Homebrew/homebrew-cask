cask "prowlarr" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.3.0.1730"

  if Hardware::CPU.intel?
    sha256 "04183921b0c396bb75dc48e414ecb703a27677c516b40a68dc5c51607c5f6ce6"
  else
    sha256 "44b0dd8d80cc0341e7a4814cb7e4c53a26a651e94a1d559b14c6af1f84f6a0d4"
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
