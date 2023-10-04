cask "devtunnel" do
  arch arm: "arm64", intel: "x64"

  version "1.0.922+fa34179138"
  sha256 arm:   "065e86312e3513aa2a5bd6ea2f0822ca3a50ad6981e497043ded6b1630044737",
         intel: "d9875469d96c563302cb68d1bd6834bde6ba949ace57714a86ecd0108073da1e"

  url "https://tunnelsassetsprod.blob.core.windows.net/cli/#{version}/osx-#{arch}-devtunnel-zip",
      verified: "tunnelsassetsprod.blob.core.windows.net/cli/"
  name "Microsoft Dev Tunnels"
  desc "Provides developers secure tunnels to share local services"
  homepage "https://aka.ms/devtunnels/docs"

  binary "devtunnel"

  # No zap stanza required
end
