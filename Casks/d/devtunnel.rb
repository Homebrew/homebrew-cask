cask "devtunnel" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1290+8d780f0d7b"
  sha256 arm:   "71c578508f5d1dfd9049e48463ebac18f57a93bd380254db9e8dfa2f9d47eac1",
         intel: "4e9297803774b2423f54a9210a61f8c1452cfdd040c8529c88b3835c39a2287d"

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
