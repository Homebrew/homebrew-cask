cask "devtunnel" do
  arch arm: "arm64", intel: "x64"

  version "1.0.964+9595af4514"
  sha256 arm:   "3d81eaa2bd1d5be99489ac378c2925f2076f01d1a505044b0e51902ce052a868",
         intel: "c48f72ec265cf152929143672ccc090ff9739b925bbf56e54621ea55657e8f54"

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
