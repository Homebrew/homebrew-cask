cask "devtunnel" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1401+3d725ee539"
  sha256 arm:   "c5cd38c29be84d2dbfac82280eb112d8b87f763e831eca308d1faf7ebb01413f",
         intel: "0d9f43568cca2569d4a3c283e66325c491cc4a75e0cf08eb1e3ff9196dd3f61c"

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
