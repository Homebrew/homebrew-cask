cask "devtunnel" do
  arch arm: "arm64", intel: "x64"
  os macos: "osx", linux: "linux"

  version "1.0.1516+7e996fe917"
  sha256 arm:          "fb5787bb949d6b86b5dcaeb596be740648760cd383956644f2f7ae46a6dec7b9",
         intel:        "ee6c1217158c09065882d7f59520770854220b52099e04028c300b1d63e0e06d",
         arm64_linux:  "1525720aed29204ae8d13a020caf001b9605e0644006cc5009f89a9bc1e33510",
         x86_64_linux: "9912746ed118fa36b7e22d6c8b8ca426f1add53d31425630fe7808c3d015e8ca"

  on_macos do
    url "https://tunnelsassetsprod.blob.core.windows.net/cli/#{version}/#{os}-#{arch}-devtunnel-zip",
        verified: "tunnelsassetsprod.blob.core.windows.net/cli/"

    binary "devtunnel"
  end

  on_linux do
    url "https://tunnelsassetsprod.blob.core.windows.net/cli/#{version}/#{os}-#{arch}-devtunnel",
        verified: "tunnelsassetsprod.blob.core.windows.net/cli/"

    container type: :naked

    binary "#{os}-#{arch}-devtunnel", target: "devtunnel"
  end

  name "Microsoft Dev Tunnels"
  desc "Provides developers secure tunnels to share local web services"
  homepage "https://aka.ms/devtunnels/docs"

  livecheck do
    url "https://tunnelsassetsprod.blob.core.windows.net/cli/cli-version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  # No zap stanza required
end
