cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.10.2.80-stable"
  sha256 arm:   "6324b3c896173df6ec6d795c38bec01772d4e3701c7405b0192457963d057ac4",
         intel: "c8df7c2b77e99cfdc3093debf148eef9d1ec0637d939aaeedf13755ebcef8cf8"

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
