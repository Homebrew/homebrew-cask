cask "devtunnel" do
  arch arm: "arm64", intel: "x64"
  os macos: "osx", linux: "linux"

  version "1.0.2092+48b908982b"
  sha256 arm:          "244c9b638a4fa4a6869482be4ca3562702300dfd282a3c7935e2f629ca3005ce",
         intel:        "561c6b65857747aeafb015efa21983a853a97a3076460e30578a3be6b7fcd278",
         arm64_linux:  "623f443985af5bfe703cd2b191aae6b554c9d174b94c1bb8f79ea152cc01c642",
         x86_64_linux: "06083142c6518ff0cc60577598bd1b7c761a174a5004ffd12cd72dc0aa0f7704"

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
