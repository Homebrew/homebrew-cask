cask "devtunnel" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1230+5abf679d5f"
  sha256 arm:   "d29b03e39a8e39b5806a0ba78047f633b2048ea64fe084f7e04028bc460d8771",
         intel: "dd18c426c52108a45d4eacfde7605f1e9f7fba4b39c5e1021e330e74a42dfa92"

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
