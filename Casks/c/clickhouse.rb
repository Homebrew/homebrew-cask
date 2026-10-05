cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.9.11.2-stable"
  sha256 arm:   "0bfbe0f31a6419fefba808578665c6bb6497c0c9eb033be1d305e5195dff7547",
         intel: "67fe0f7453e09c37a7f4b0624ee4ad1bb041c3fe8f4b4dd020d8904397e7e07b"

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
