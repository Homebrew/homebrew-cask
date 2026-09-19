cask "devtunnel" do
  arch arm: "arm64", intel: "x64"
  os macos: "osx", linux: "linux"

  version "1.0.2094+24665e6583"
  sha256 arm:          "be7226ccbb0178381d6ee9cad40274e29f0e8e9405507c7d70ee65f8c0eab24e",
         intel:        "efd673b5b36cd130f5d97e59125afeeb95caea6d646b92fb6891c6896f7b8282",
         arm64_linux:  "efac378f9ffb40914935fbd2361543088b50cd62248372df06c243e6f7c49cc8",
         x86_64_linux: "2aa6c41aaf7840427e84b7e1e99be5b826a9966fc027ddf61dc0f69b68db060b"

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
