cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.8.9.10-lts"
  sha256 arm:   "5b16177a8d9002a7f8f782b391171235c25896c734307e1d00e9df0cb9b2b74f",
         intel: "38d3c89ddc5d93fac5aec42d74b8fae2b58dae278ed3bbdeeaa59ca4c6bea11b"

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
