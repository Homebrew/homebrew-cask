cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.3.1.896-lts"
  sha256 arm:   "78348be37647159da1c7e2548608fca9e821f6a9b9147f9e0a8badb4de053aea",
         intel: "2a719a45cdca33c730f8b45e08859369654af3b426bd683dd1f3924e25b84608"

  url "https://github.com/ClickHouse/ClickHouse/releases/download/v#{version}/clickhouse-macos#{arch}",
      verified: "github.com/ClickHouse/ClickHouse/"
  name "Clickhouse"
  desc "Column-oriented database management system"
  homepage "https://clickhouse.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[._-](lts|stable))$/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  binary "clickhouse-macos#{arch}", target: "clickhouse"

  # No zap stanza required
end
