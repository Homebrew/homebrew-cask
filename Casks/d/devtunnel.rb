cask "devtunnel" do
  arch arm: "arm64", intel: "x64"
  os macos: "osx", linux: "linux"

  version "1.0.2030+fc9273aa0f"
  sha256 arm:          "004f3cc8ebcce61223bacac80d31937eb2e92eaee9a05600a1cb62fb5f775afe",
         intel:        "a34f906bfbb99444ec45a084bfac80284b9f3919c81741a838b3eab75e3acdf3",
         arm64_linux:  "f7a76e0117a3e8d5bfbf9416e3480cdac36c2b4bb10d2683f0780dc9284b642f",
         x86_64_linux: "ff6911548907b5abaea4ed5baa36b2420be7c5debcb637a4f50f7a4002b10b60"

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
