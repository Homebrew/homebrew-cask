cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.6"
  sha256 arm:          "c5ec9387952f8040a70011e46d0c56c340c12b62dde2b68260a1745b20418eac",
         intel:        "fa5d608829a0d3125a994fad8860158deeb014cb132a833b3429b4475419f5b4",
         arm64_linux:  "d7b176dcaab59adb1d736b0ffa418ed13f562a09c16c8f434a89a0d679571fd6",
         x86_64_linux: "dc70e80a26aee8bb527c1e4e266dc25592723a5c9c6f88a1a6af61a8c5e6908e"

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
