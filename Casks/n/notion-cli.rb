cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.14.2"
  sha256 arm:          "149a9f20cb5b8fc9a41a9af5d3b54c67abe31f6ad042775d34072dbc70e00737",
         intel:        "6b3cb0adcae1f0b9b64fbd68a434fac837d0a74988f02891ac5515e9ec1b0cf4",
         arm64_linux:  "22cf9550940b953d1ce7243a5225c8663ee81b80120ec7d348308d445185a569",
         x86_64_linux: "441ea87d1504a3e30ff42264e34b850a65a202412ebd23c1e5af3e4051eeb14a"

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
