cask "devtunnel" do
  arch arm: "arm64", intel: "x64"
  os macos: "osx", linux: "linux"

  version "1.0.1761+fbcf642855"
  sha256 arm:          "f708270b19a6c6d990ed56ac45159ebd1bdbc97f2b0f74442258d09867794b8c",
         intel:        "ee537b8d399f073360b864e43e5f35a3ee4d2b2c229f3d8fdf09210ec8a0e7cc",
         arm64_linux:  "911b12a69e7994c9209c756baf0ad28b05816d755505afd2f1ddbd5c719c0d4b",
         x86_64_linux: "62668717b7abd01c3930c99f70a02f2fa6633190e423fce0fc10ee4e1386afac"

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
