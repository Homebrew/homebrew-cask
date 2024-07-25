cask "devtunnel" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1338+932252c8a1"
  sha256 arm:   "fc5a7ac8aaf0ac7efa7754478f55bafd73b21cb614d283e609aa41df3db14201",
         intel: "9b2a798c02c7bc68e644c809cc06f10d245c1ba6ea4d1f921f201cd262f75cf8"

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
