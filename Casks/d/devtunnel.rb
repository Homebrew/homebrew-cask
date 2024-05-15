cask "devtunnel" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1301+f410beb2af"
  sha256 arm:   "a2300a1435157eea27dab64ae3ff9fef87db407f9799283e8fbcb6dfc9f86fcb",
         intel: "98d36fc7632dc0b1fdaeb02776cf035df085285172d5974de3fd943a3c3c70d0"

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
