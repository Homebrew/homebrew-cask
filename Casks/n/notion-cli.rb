cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.21.10"
  sha256 arm:          "61fb7962623703a0af80409797def858fd8a5aa85de2b09dc9445410cc4d1236",
         intel:        "dd3013c12443ba87e3eb690baa4c822ba61e6c4bca70fa78bd2501f7dbc25467",
         arm64_linux:  "7efc43d9c90a432c7f2ebea42330dadd39f9fcf2e47a970b906a12fa2ed1c329",
         x86_64_linux: "e06bc4ef7825b3054e4fd55290d5daaf78c82bd8cc5514e53b40a6e1be2d1058"

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
