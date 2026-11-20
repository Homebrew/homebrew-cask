cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.10.8.34-stable"
  sha256 arm:   "20981f9278f8e9836930de22779e15bc7f2b873f0803859d92e1e5a38cb38b85",
         intel: "d01557a242cf624e59f225c8e4ead4b963a57f85c7c2c123fb13a70104ced509"

  url "https://github.com/ClickHouse/ClickHouse/releases/download/v#{version}/clickhouse-macos#{arch}.zip"
  name "ClickHouse"
  desc "Column-oriented database management system"
  homepage "https://clickhouse.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[._-](lts|stable))$/i)
  end

  depends_on :macos

  binary "clickhouse"

  zap :not_required
end
