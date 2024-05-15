cask "devtunnel" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1299+92794a823b"
  sha256 arm:   "8f72449d1a24b0c7da53583c06d691b22f20629e8788bc3a676fc777e9d1f7a0",
         intel: "5be5be3f2dd6e0974da626e0d6d0ec2aed087f97646ecba6ba0cd5394e5f861f"

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
