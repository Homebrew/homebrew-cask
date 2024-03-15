cask "devtunnel" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1249+67b1cd300c"
  sha256 arm:   "0433aeaf897c5383eb2817da2b11bfa6b8802964d4c3c588a17bff6f9d8181ec",
         intel: "09d7c9df0e2a6a6a4f5d1f3cc59b6d7ad164d228253817f36baea65fa6d38ff5"

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
