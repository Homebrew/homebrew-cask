cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.8.4.11-lts"
  sha256 arm:   "777ce0a7d774b3548da4485df10c2bf440fa369894c94de9e60342a4ee6b7e58",
         intel: "48b9c3b0d3dd96cad8510ed4b5b2e035fb3db220f6526331d2af110df2fda9d7"

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
