cask "devtunnel" do
  arch arm: "arm64", intel: "x64"
  os macos: "osx", linux: "linux"

  version "1.0.1763+a06226a821"
  sha256 arm:          "c4455d3570c8dbcb873ad9da488063922769bd25561b33e96e92a2dc66761270",
         intel:        "1301f5132448a57c83a3d6d5797b240fd389436965b23c7749db6a7351471bb6",
         arm64_linux:  "ad9e1068b5f7f7efea71846bbe6c078b24492a171d3b7ffdc43289479c1a9676",
         x86_64_linux: "b83cf544a0668596539b092001123a6af7abc64562a43d6e1b88ef393afc569b"

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
