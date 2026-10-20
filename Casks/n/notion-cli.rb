cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.21"
  sha256 arm:          "4091cf42f1014dd84d2a02ed3352fbf6dd3bab22c08cf2487d5c1e0e43e3a33f",
         intel:        "93161b52b9d1f32681ab1ceeb82f535edff336f95acd3978bd94de4e80757fc6",
         arm64_linux:  "f69495e0791f2e29e50b5a26deca8727d58dab5fca1acc9b70d6fe0573773914",
         x86_64_linux: "84ca4d08ab4aa29562f7b2e1addc954ecf43472f905091854c3c4ac25ef15055"

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
