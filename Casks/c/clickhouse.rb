cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.8.8.8-lts"
  sha256 arm:   "5fb268711ccfdf47fff77c7b11fbf7a8bde32c496f7fc284c4fe1498fc340dfc",
         intel: "da62a610840668b63b17267317d3077e6368223ab5a603a14a463df79aa8616f"

  url "https://github.com/ClickHouse/ClickHouse/releases/download/v#{version}/clickhouse-macos#{arch}.zip"
  name "ClickHouse"
  desc "Column-oriented database management system"
  homepage "https://clickhouse.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[._-](lts|stable))$/i)
  end

  depends_on :macos

  binary "clickhouse"

  # No zap stanza required
end
