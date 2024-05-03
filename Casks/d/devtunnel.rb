cask "devtunnel" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1293+354176948f"
  sha256 arm:   "2272d322e0e3ad2d5a4a3802362cdd710e48155937c5c836629ee7484c8c00dc",
         intel: "d0a6ac9b7f6d9dcef4c39a4e236c378d942124b367df296318a7b2b4a01131e6"

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
