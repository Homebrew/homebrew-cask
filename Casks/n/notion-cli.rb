cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.18.1"
  sha256 arm:          "a306d147debee7d766c6df082f4a67cef27c60952b7a197d9bfe40d5aac74fd9",
         intel:        "e98aa3db66bf41460a1d7f7e669f1fdc4b6becf280a8e0729419665827d8b58e",
         arm64_linux:  "ecb94f499cbe7f4a86030b1cbb04b1a4cecbef6ff9581fd4ee92b0643e638cf2",
         x86_64_linux: "c38b58c89948263c6e110883e25210425d720743f4a11a6cecf8797a42f439c5"

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
