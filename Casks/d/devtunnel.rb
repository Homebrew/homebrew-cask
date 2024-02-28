cask "devtunnel" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1217+9b9f4aa22d"
  sha256 arm:   "0b730c9c4a69f5bf3b6042c9a0d0ed3f73e855d951c35360556d5dac5bcf9e6c",
         intel: "539f1392bb4f58edf49bcd2cd34dcce55d00ae90b09b4c78400d95f8fb31b86e"

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
