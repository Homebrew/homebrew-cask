cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.10.9.12-stable"
  sha256 arm:   "ecc94e4028bb46cb818da87c16b6f0b647377b43a40f2f3dc4f297fce5f5f10d",
         intel: "0811405aec8c0cb28593f319da67ac6db48470546cf38963664638122a1b1a1b"

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
