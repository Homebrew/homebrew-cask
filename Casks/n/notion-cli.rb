cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.3"
  sha256 arm:          "a27dcedb9cd497ef14e0e986a792f5b73ad4676c2a6437efc163047d86ccf89b",
         intel:        "85b83c1b1c9823d98b061d725d9f0e09fe7701f975c533fd7fb21b3ef9fd70b1",
         arm64_linux:  "c4cee8c3073d3578b4a9e9c0fa4da1a09043f12d46b3c510d6b0b4e40d92b844",
         x86_64_linux: "5b5b1ccafc5a72ad354dac0caef1f5c3ee0ad165e7613f432d59431ef460093a"

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
