cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.2.5.45-stable"
  sha256 arm:   "61a933b7cba2a9b99c411937780a6efd8eb108926f40d70ee3448479e1de91b4",
         intel: "02394f5a29ae4006ce888118de0dd0f1a50f808b003f3f847dac444b127996d1"

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
