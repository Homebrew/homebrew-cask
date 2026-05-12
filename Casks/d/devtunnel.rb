cask "devtunnel" do
  arch arm: "arm64", intel: "x64"
  os macos: "osx", linux: "linux"

  version "1.0.1824+9e602bae78"
  sha256 arm:          "8773a3be0bf8f886b2e9da0384456f979c3e4617bb0cbb125dd6cf3fcc058258",
         intel:        "d379ac024b53a9761540ade10f637983c9279b26058505d368b2f7591f4b96bb",
         arm64_linux:  "333594f191ee63f07cd72f45afa983d379db5dfb893a4c342bba88fcc63a48ad",
         x86_64_linux: "6a85d19b050c784f8fc3dda09db37c4ce29c6e95ff05e52a89fc8acd609e706e"

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
