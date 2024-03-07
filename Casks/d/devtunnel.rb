cask "devtunnel" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1230+5abf679d5f"
  sha256 arm:   "02a6e0bf521b045cf5826f407a1a14df7b6c5420b87f2a31a2448bfa7690fa2d",
         intel: "0f95b5798506887004111ee9fb21a332be99a76bba526d53ffdeea99ebedd7f4"

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
