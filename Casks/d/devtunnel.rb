cask "devtunnel" do
  arch arm: "arm64", intel: "x64"
  os macos: "osx", linux: "linux"

  version "1.0.1782+4529db1bc6"
  sha256 arm:          "37f923e7f48a5cae2c966230e0a7705e59bb2ec65c20a6383920052278ca2691",
         intel:        "e69ba7127588ef7e61b6ac11560058281fc9ef09e2c313c19945bf275e841d69",
         arm64_linux:  "f944091bd81b9dcb2a2242920e962c309dba6f18fec845e5158f651bad3952ef",
         x86_64_linux: "2ac04b94797f2b9c846a968d97883ed404b7d9ebad57ca6c32946215bd309935"

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
