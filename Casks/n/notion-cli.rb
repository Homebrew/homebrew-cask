cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.17.0"
  sha256 arm:          "98d8fcf3eb6b681d7228f20dc661a9a5326ced7f7a2dacf6f9fe6f90a54c2647",
         intel:        "72a52ad2b6f975b29d08feca2d8211c5a35d52da214fa13fe8591860be4f6d08",
         arm64_linux:  "7565481faa24d86e7359c374a33cb01cc7265a1508a847a5b89b8774d7c41b99",
         x86_64_linux: "df005d39b82e264c6051e3c4ad2601f7bf30faef218b078bca0c260d6ad80e3b"

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
