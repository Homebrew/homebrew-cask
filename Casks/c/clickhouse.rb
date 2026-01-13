cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.12.3.21-stable"
  sha256 arm:   "6023fd26d38612389ec332841166a8684393ed025b5f61dfbb3fcd0344965525",
         intel: "77de677b774ab499aec42fb1d88c52b50cd51e1dbc60733b6ae389e743dc9b64"

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
