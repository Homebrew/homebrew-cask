cask "devtunnel" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1229+c3607a1c01"
  sha256 arm:   "4c73cf926c8e7c7617a6d29eb2ad0f7ac50f41b389eaa6996ec07a144a279e92",
         intel: "9e5669e8f80141b663f719b27520b79f75707a155a0359c7d5d4a842f2953b86"

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
