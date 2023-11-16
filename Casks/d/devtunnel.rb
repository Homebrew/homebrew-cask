cask "devtunnel" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1042+788c4fbe73"
  sha256 arm:   "06d367de7b6ed5ef0b807d6afe6c8ea3b4a36b45b3f7d15faa667fb7a3420301",
         intel: "80c31b77a17755029184e09aee217facce6ebe9369ba40196434a407fe057900"

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
