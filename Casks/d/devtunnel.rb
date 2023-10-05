cask "devtunnel" do
  arch arm: "arm64", intel: "x64"

  version :latest
  sha256 :no_check

  url "https://tunnelsassetsprod.blob.core.windows.net/cli/osx-#{arch}-devtunnel-zip",
      verified: "tunnelsassetsprod.blob.core.windows.net/cli/"
  name "Microsoft Dev Tunnels"
  desc "Provides developers secure tunnels to share local services"
  homepage "https://aka.ms/devtunnels/docs"

  binary "devtunnel"

  # No zap stanza required
end
