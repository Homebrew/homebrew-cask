cask "devtunnel" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1516+7e996fe917"
  sha256 arm:   "fb5787bb949d6b86b5dcaeb596be740648760cd383956644f2f7ae46a6dec7b9",
         intel: "ee6c1217158c09065882d7f59520770854220b52099e04028c300b1d63e0e06d"

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
