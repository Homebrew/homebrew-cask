cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.10.12.13-stable"
  sha256 arm:   "ab112373a2d0292a5649dc0300c3351b993d2a13524b159c1696f536d80799a1",
         intel: "ae4ab0044232ff40ebd2fe72f29f6775b3c321821bfd0dec4138c44f6dda17e7"

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
