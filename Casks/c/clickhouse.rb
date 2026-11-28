cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.11.5.8-stable"
  sha256 arm:   "0e637c3258e4d29a32cda272879331164d5e23998591b46e8f7b1a784417d02d",
         intel: "5ac8b124e2e1d8e7f94e5198c07036a94caab4b4089636b9f32b23f5c179cb60"

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
