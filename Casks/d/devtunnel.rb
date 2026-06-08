cask "devtunnel" do
  arch arm: "arm64", intel: "x64"
  os macos: "osx", linux: "linux"

  version "1.0.1886+37d3b95bd3"
  sha256 arm:          "b31a2b25c51b79031b518aa0920d4869ee8052bcbde0116be7bc27dc134e85c4",
         intel:        "b1dafd7fce4a0eb57588abd1ece1545951e9f0aaba62badbb010beb81ff8c67e",
         arm64_linux:  "aa9c2ed0eae492521fcbd5e73286c5265661f2cca9e6ddd3f4710853a26934da",
         x86_64_linux: "a7558f0fb0167cccbb9da26543d3e6a2ebeff63f8934b73a7a4e1541d026d510"

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
