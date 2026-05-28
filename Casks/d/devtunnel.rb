cask "devtunnel" do
  arch arm: "arm64", intel: "x64"
  os macos: "osx", linux: "linux"

  version "1.0.1885+b157b81ea9"
  sha256 arm:          "ac7795de9d2ba369ef566ecfa1e4cdcdab168189444bb7dc13c5a7b9f337a6df",
         intel:        "4babba27eee566aa0239d9eea641bb9dd2c53abf95693c206522f5f43235b10b",
         arm64_linux:  "5e1bbe68e431d11a5ddefa515eb05475dc8294f4b61b7b096b1bd05468abd043",
         x86_64_linux: "a94cff0e058d726a573887f23649ae354c5903afa783837b5a9802d56da55551"

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
