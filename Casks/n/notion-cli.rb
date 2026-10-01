cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.14"
  sha256 arm:          "e17fed08437bac6b07ca853bbe9307615c0924e1d14666359e1a90a6b1e77864",
         intel:        "e6cfc4009f7c569bfdd147de47dbcee182cb5d9be69d681816c9715ecd7be298",
         arm64_linux:  "61c3de13e8fdaa4d3e988927354d7d59fda56402e3c1561750438e5f50660de0",
         x86_64_linux: "fc49de1876cd86faee06fe14cc242ad215e0f5210188980203e4b009821c42c0"

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
