cask "devtunnel" do
  arch arm: "arm64", intel: "x64"
  os macos: "osx", linux: "linux"

  version "1.0.1972+07cc55c789"
  sha256 arm:          "ef4197d8a1d6564fbec87c8752f04a7573d13810d527d547084e232b71ee7b5a",
         intel:        "283ab1f20f3e6ebf6c3434d3b14e1b909f9b04822069d99ee19d33201ffd3710",
         arm64_linux:  "e23f23e4e68c46ee08a1e9db5d62e5c00785c66cb70236597bee0e0a64120512",
         x86_64_linux: "6380d3e54c81e7e2541900bec3d4f2785dbf81f17cd81effbd54d98f11a874b9"

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
