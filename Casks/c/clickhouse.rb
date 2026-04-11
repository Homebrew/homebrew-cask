cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.3.7.8-lts"
  sha256 arm:   "84b9890a8c4c2cb9e26895ac75fe4203b144b64f6ad9b3aaa037c2fa60b40843",
         intel: "5f5b740630c4e2c9333fbb8c097c585d0485fff9e4f581d30e259c1cfd4b425a"

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
