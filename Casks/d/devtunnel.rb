cask "devtunnel" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1110+47c982ae3e"
  sha256 arm:   "86e19416fbe5e46dd7a8ad61317e8c839c9035c00012ced694efac7edaba1836",
         intel: "e605f365b892d36910e2c0c1dfab6b4e5d13d6746118eff9eda163a46105c8e6"

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
