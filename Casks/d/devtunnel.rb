cask "devtunnel" do
  arch arm: "arm64", intel: "x64"
  os macos: "osx", linux: "linux"

  version "1.0.1968+7baf8adc20"
  sha256 arm:          "05398bb90bd5376eafbe9116682afbefedd3124ca7855826744fe94a7471a241",
         intel:        "74c3c258b785dccd5cf968712cbbbde8ca4fc505a5da13c595a47645aad7f47b",
         arm64_linux:  "7d252be2d0100af342e25dda8985f09a30d3805c6df9214f6ddf916cc9fb00d8",
         x86_64_linux: "7ea79ad08059becc5fbb5bd6e9de08b3e6edae2fff97df4e6029c49044d81841"

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
