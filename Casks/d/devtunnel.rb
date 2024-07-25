cask "devtunnel" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1337+0f53d9a327"
  sha256 arm:   "40e70d2c2beb922774dc25cbd237c4f2dfc97c5fe86223a5105ae19309ce00f5",
         intel: "0e136b0e8cd22979d6646f2925359547a7b2c5d60814866a96baead2216b88ef"

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
