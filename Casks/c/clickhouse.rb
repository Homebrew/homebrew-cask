cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.8.1.2041-lts"
  sha256 arm:   "2d93a07f2ecd135f8c781209a16f853ec743c0ef0a79f22c3fdb6c793dfacc04",
         intel: "5cccac4b365604abc08f3249e99854cfc88bbf00306492ef983e2ce29af63f50"

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
