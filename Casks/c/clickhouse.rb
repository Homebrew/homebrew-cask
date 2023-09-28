cask "clickhouse" do
  arch arm: "-aarch64"

  version "23.8.3.48-lts"
  sha256 arm:   "f8570159b74d17c00434775fef788edc0519e6b305141dfe803aec3fdd9a5a62",
         intel: "d8f0c9a2df15c10028fe64d1553c8382a194fa39b2f170aa4b708f00847ef855"

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
