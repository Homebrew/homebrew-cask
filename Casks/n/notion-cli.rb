cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.20"
  sha256 arm:          "b1b224c543c2fbbe3a4e1b189fddac9e65d8bec1b25b9bf029200bdc14bc64e8",
         intel:        "5ca5d318d5db619eb5cba458eb21ce587761138d482f9eb0b09fc5ed906bd8dc",
         arm64_linux:  "b86424b2411270e932e05f140322923e8250f70877e7d3ab247ea604fb1d5293",
         x86_64_linux: "fec196e491d4a6cd70ec3d43885526cc4444d5c6a9780a53ae536f83044250fa"

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
