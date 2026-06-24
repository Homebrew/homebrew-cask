cask "devtunnel" do
  arch arm: "arm64", intel: "x64"
  os macos: "osx", linux: "linux"

  version "1.0.1941+fa8849cecf"
  sha256 arm:          "16fa0d6a4468a2264724d5e242b6f3ab59905a890abbe5b3265a115d02a97ef7",
         intel:        "6a8442eb746928f1125b3dc0862963ef03a1acff829345bb16168a8657e0de55",
         arm64_linux:  "7fc85b81d13710846da50001f190ece30a16c7e58960b8f792f94cc0d387ba74",
         x86_64_linux: "14bb504df772e96c356c3745fadfaac18bc5cf9d2136a62192d9f0550077dd0f"

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
