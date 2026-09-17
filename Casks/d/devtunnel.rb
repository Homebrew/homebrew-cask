cask "devtunnel" do
  arch arm: "arm64", intel: "x64"
  os macos: "osx", linux: "linux"

  version "1.0.2086+eb5ddeb517"
  sha256 arm:          "f5dc975ab464e402c3c6f6c1db8aed3488caa79e39234accb2e894d90e33e2fc",
         intel:        "bc262c28f9bf5c764390bf72d451422b0d2dde98d2d347c17257e3bf38fe10c0",
         arm64_linux:  "64890f9e87e846b85858a3711952f29ba90dfb12a1a0d3239a7237a118aca753",
         x86_64_linux: "cfb813988cfa0032535622e3fe22cad33a890766db40b8aa85190e05fdb4e7e3"

  url "https://tunnelsassetsprod.blob.core.windows.net/cli/#{version}/#{os}-#{arch}-devtunnel"
  name "Microsoft Dev Tunnels"
  desc "Provides developers secure tunnels to share local web services"
  homepage "https://aka.ms/devtunnels/docs"

  livecheck do
    url "https://tunnelsassetsprod.blob.core.windows.net/cli/cli-version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  container type: :naked

  binary "#{os}-#{arch}-devtunnel", target: "devtunnel"

  # No zap stanza required
end
