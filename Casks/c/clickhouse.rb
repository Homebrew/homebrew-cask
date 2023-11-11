cask "clickhouse" do
  arch arm: "-aarch64"

  version "23.10.3.5-stable"
  sha256 arm:   "897924d11f7329166c155c644f4a5200270f25a466a0d10d0016ca8f8fd612f9",
         intel: "571910428a571a232d5ea81f7cb22203a72236b964f312da8c985d0386ab6cca"

  url "https://github.com/ClickHouse/ClickHouse/releases/download/v#{version}/clickhouse-macos#{arch}",
      verified: "github.com/ClickHouse/ClickHouse/"
  name "Clickhouse"
  desc "Column-oriented database management system"
  homepage "https://clickhouse.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[._-](lts|stable))$/i)
  end

  binary "clickhouse-macos#{arch}", target: "clickhouse"

  # No zap stanza required
end
