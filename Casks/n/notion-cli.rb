cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.29"
  sha256 arm:          "fa0ef33ea9d0870e2de7af2c4bc9d632a68a99aa971aa15d5cbaf89f3ea6b1e5",
         intel:        "d4cd5cd410e70888f8190684989d490680cb5360120e860536d990d93b900fe7",
         arm64_linux:  "1e20034268daea1221b511ce74d821486191a78b9c4f99d87e59c3bde1025001",
         x86_64_linux: "1d3911e496062146d956d18e249562d3dc8f8797e3120ff92c2f957e0dee08fa"

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
