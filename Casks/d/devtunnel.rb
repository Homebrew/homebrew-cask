cask "devtunnel" do
  arch arm: "arm64", intel: "x64"
  os macos: "osx", linux: "linux"

  version "1.0.1972+07cc55c789"
  sha256 arm:          "b350b7016b76c5565e633481ce53bfc9ffd7564d8abdf657235e70f7ce390983",
         intel:        "af16f2dff43a70629af305983a5af8f8cd7a7ab3a344948ae61ba21a1ae557b3",
         arm64_linux:  "e23f23e4e68c46ee08a1e9db5d62e5c00785c66cb70236597bee0e0a64120512",
         x86_64_linux: "6380d3e54c81e7e2541900bec3d4f2785dbf81f17cd81effbd54d98f11a874b9"

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
