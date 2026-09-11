cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.4"
  sha256 arm:          "2a36f2998ae8e9f39ce15af2d668a2b5915162650efc5cb37683e8b570cc77a5",
         intel:        "e14255188d3c029bdd8d62a80ea37bea791d29e30d4e1329d4fea65a74b13631",
         arm64_linux:  "da43f0061fe3964f333db61067e7a9f2a1d50af07d93570dd7d99a74981c2ae5",
         x86_64_linux: "7dd249438c7c914e8a118be4f5a3f996602e5cd4d99d68327858d495f1929166"

  url "https://ntn.dev/releases/v#{version}/ntn-#{arch}-#{os}.tar.gz"
  name "Notion CLI"
  desc "Command-line interface for Notion"
  homepage "https://www.notion.com/product/dev"

  livecheck do
    url "https://ntn.dev/latest.txt"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "ntn-#{arch}-#{os}/ntn"

  zap trash: "~/.notion"
end
