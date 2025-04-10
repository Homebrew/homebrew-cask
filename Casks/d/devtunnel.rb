cask "devtunnel" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1435+d49a94cc24"
  sha256 arm:   "37bf953acad8a34f1387905765c6fa0625c68fe985bc1bb02ccd0b13f6ab8389",
         intel: "6ea8d3ca2d8bba77f4946e6c9a680761b28a79db66439ef4336831bac736cb27"

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
