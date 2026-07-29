cask "devtunnel" do
  arch arm: "arm64", intel: "x64"
  os macos: "osx", linux: "linux"

  version "1.0.2010+aa42024ecd"
  sha256 arm:          "644d7c6c36d19dfcd9c8644643c411f4152ab8a2bd3fdcfcd94356fce6dfd53c",
         intel:        "cf22af152932fc855f751ee87907285a7ae5c82eb13b2332270431a12100aab6",
         arm64_linux:  "78f41b5174f9ba8f7b0ede8b356ab2b4f6237ceb4831f98c5a97c9ba73d2b7af",
         x86_64_linux: "14500cfb7847334f0d8a60fea0d3b8543e634bf41edc3fe1909b4ce813681d27"

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
