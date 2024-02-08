cask "devtunnel" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1182+869da9cb8d"
  sha256 arm:   "1105cfe10d0a0eeda872f38e0c874bfdb3357985b2c69a37905f643bdfadbf9f",
         intel: "0530cff1f1570bb5bae6732e1113e221804747024a1811377b12a173c4e4a1c5"

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
