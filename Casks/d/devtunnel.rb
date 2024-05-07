cask "devtunnel" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1295+d0b0a712f4"
  sha256 arm:   "7636333395641064a920b8a17f47fac10d522ddbacda66c434613d64809b699a",
         intel: "d03b6fc59bd63208bc113ecbe94d2ca2c77ef6e9b0b69ca4ffe1d3a4216cf7c7"

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
