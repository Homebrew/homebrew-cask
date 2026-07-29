cask "devtunnel" do
  arch arm: "arm64", intel: "x64"
  os macos: "osx", linux: "linux"

  version "1.0.2006+dd9fe5139f"
  sha256 arm:          "b4bcf6fe8498467f345e517c110c0feb98de7c9f8fdf68011a1c2de157b00644",
         intel:        "e65eeaa8167617dc4cdc928b196ffb9b1fb68526d210418db268e904e89d4de5",
         arm64_linux:  "d607aec553e180290a5f5c03cda082c913590f9c4a2f041f1b352ec1fbe749eb",
         x86_64_linux: "562e5746d524be54d8f399f6edc037b180a1bf6add261a2d1b2b2786b98a4f86"

  url "https://tunnelsassetsprod.blob.core.windows.net/cli/#{version}/#{os}-#{arch}-devtunnel"
  name "Microsoft Dev Tunnels"
  desc "Provides developers secure tunnels to share local web services"
  homepage "https://aka.ms/devtunnels/docs"

  livecheck do
    url "https://tunnelsassetsprod.blob.core.windows.net/cli/cli-version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  container type: :naked

  binary "#{os}-#{arch}-devtunnel", target: "devtunnel"

  # No zap stanza required
end
