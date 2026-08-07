cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.21.9"
  sha256 arm:          "b0a6c7a25fc6e5dc5ff044c4f1aa25ab85595853fedd024b739cd9432e2a67a3",
         intel:        "f747df24d3bba452aa0e2770317732daf9aa6d1897d1764aa4033dd73bdc1b84",
         arm64_linux:  "c951ada4a281ad9af55511f532de5c5e7962b9399db929204e25cf94ccfb910b",
         x86_64_linux: "17afb2947935c6291545fa4dd8aa888358552c609866d9ea1ec310f510193f00"

  url "https://ntn.dev/releases/v#{version}/ntn-#{arch}-#{os}.tar.gz",
      verified: "ntn.dev/"
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
