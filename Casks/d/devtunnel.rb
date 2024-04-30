cask "devtunnel" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1293+4a61ac5730"
  sha256 arm:   "38f2c739c2997f059ab08c0b88610a9d1e018898fdd173eb7a26a1318277d830",
         intel: "9b2cfd321827fb3232e82874443795575c7985e202d1748777dedc06bac21059"

  url "https://tunnelsassetsprod.blob.core.windows.net/cli/#{version}/osx-#{arch}-devtunnel-zip",
      verified: "tunnelsassetsprod.blob.core.windows.net/cli/"
  name "Microsoft Dev Tunnels"
  desc "Provides developers secure tunnels to share local web services"
  homepage "https://aka.ms/devtunnels/docs"

  livecheck do
    url "https://tunnelsassetsprod.blob.core.windows.net/cli/cli-version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  binary "devtunnel"

  # No zap stanza required
end
