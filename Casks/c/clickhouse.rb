cask "clickhouse" do
  arch arm: "-aarch64"

  version "23.10.4.25-stable"
  sha256 arm:   "9b865eddf1a4cc7cf14ad80b65d88d5d11e16eb5e43ce8ef64f560ea184cb034",
         intel: "9760821dd6a97ec3f58d0e155bffcfb8453d1e5883c7f8cb1adc75639bc51982"

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
