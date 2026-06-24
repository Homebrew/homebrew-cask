cask "devtunnel" do
  arch arm: "arm64", intel: "x64"
  os macos: "osx", linux: "linux"

  version "1.0.1942+d6261b4fd3"
  sha256 arm:          "7fffcb0f12f663fe2b12a91c436750771bb3fa596b668124881a29a473a09944",
         intel:        "40d175fd52e2bb18692899582a0df268527e210a002b782e67471f8ff5dc03d6",
         arm64_linux:  "328d3e05d07cc317c356efce8aae11c78058ba3333219f3b9aec3576e98d2053",
         x86_64_linux: "2dba09cf2dc7e0be49af825dd0dbbfcec6e33cdb99b0dbab108e8063e1071b5f"

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
