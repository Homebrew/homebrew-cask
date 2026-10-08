cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.9.13.15-stable"
  sha256 arm:   "5155c0ab67e054f070bece72ca8742d8e584a65fd69b3da028d96478e5fa62fc",
         intel: "ca6a90f067fb17aa2c0357c4eae22e2df2be08e1ef75856940f920c77af09ef6"

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
