cask "devtunnel" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1338+932252c8a1"
  sha256 arm:   "a0db69bd6f16bbda78a941aee19b13b9af0415859d114bb23ec3240d49484773",
         intel: "648e13e2c4eebeb411a68f6912dc7b4cf222ef85b14700089011f88b7c13a8cb"

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
