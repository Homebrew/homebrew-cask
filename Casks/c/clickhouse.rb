cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.1.3.52-stable"
  sha256 arm:   "1a21e77e4b48006e9842a564413a7bf94f924b6fde18b03a7af07bfa3957d738",
         intel: "54caf7a2903bc441544d5c76cd065a22a7d9c99b1a0982cc80a4a3144da9f770"

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
