cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.22.12"
  sha256 arm:          "62527de672b142be9409ed4e9fd6f3b7e2151f8c22f088e8fa4b5192e3b26d54",
         intel:        "c86e2fb6e7cb74f68dd1699f4d42b21bf201e21d42e177c3394d71b83dd11017",
         arm64_linux:  "9b97fc8badf0a944c7b0f384a715851d9e8697bbbac3524693da223843e6e048",
         x86_64_linux: "aaa7f752f0e8e050a052797705687cdfe39daf3f8661a632758ed65a60f2b271"

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
