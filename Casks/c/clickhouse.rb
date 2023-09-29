cask "clickhouse" do
  arch arm: "-aarch64"

  version "23.9.1.1854-stable"
  sha256 arm:   "3f03f507ea07925daf29e4724e16dd78c8cc5c1ef3a926491f74d918a631b604",
         intel: "1399289f6858b2b6a0cad8f1acfa38a6c299957de27441e1dfdad2deab28f97d"

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
