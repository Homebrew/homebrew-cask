cask "devtunnel" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1294+a9f97d3879"
  sha256 arm:   "85a0e2bcf31b2dd58c56d876be594b0ea985c178e823b987fd03e49cb67a5e19",
         intel: "d8e86b91d8836698f556f106b11ee46f9e22ef32e53ab6094db655250186034b"

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
