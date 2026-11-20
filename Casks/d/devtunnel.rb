cask "devtunnel" do
  arch arm: "arm64", intel: "x64"
  os macos: "osx", linux: "linux"

  version "1.0.2115+e16833f284"
  sha256 arm:          "7cac9a23cbb5e7c17b33d38b9921c8b0c108337533980bdb24d56c0c6e4b54fe",
         intel:        "39e5cbfbb5b21a94f14bfa1500d7e531dc90ae047bfe96146c4e05ab5ae4a18c",
         arm64_linux:  "b537f270a55d57f23b7621cec0b09806aa9ada119713b33e9255284179b76bde",
         x86_64_linux: "723d6aebdc226064aef321258fb17c8a2770c9cc2bd05004c0fb83e72b302c3f"

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

  zap :not_required
end
