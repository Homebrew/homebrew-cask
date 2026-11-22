cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.10.10.3-stable"
  sha256 arm:   "a46dc85f920e84963a1a37a74e253542d5afc29afd9987d4f10ad37208ae6f68",
         intel: "80d317cefbe7ba2aff003ff3f48ffc7a33c00f130b5c8447b177df32bac382d9"

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

  zap :not_required
end
