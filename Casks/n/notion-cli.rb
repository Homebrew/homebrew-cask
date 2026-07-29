cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.21.6"
  sha256 arm:          "179e2c9aa84263380429a487af1b9c24df0fc6d45658063873207829585012a5",
         intel:        "abb2e83d88954814ef1aa931a500fe7dddac2331affc4b54750fb6af40f8fb53",
         arm64_linux:  "3bd4de8caf15a030f2cb290a211fbca8b0524388ca3ebbcdc9f29d7ec1052507",
         x86_64_linux: "3999dabeac3e6d79fc367eae7daee899cdf1e957dd4e86b4adfe34be881db5a1"

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
