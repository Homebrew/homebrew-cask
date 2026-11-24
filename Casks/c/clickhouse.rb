cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.11.1.2942-stable"
  sha256 arm:   "acf650a13b7dc06125d3b640ca5c31e6fcfb8709f5351059dcbf817cd4a25d03",
         intel: "d582884b5be29564d253f887464a5c5f57c89b083185390c0982d99526757407"

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
