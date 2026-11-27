cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.11.4.11-stable"
  sha256 arm:   "5639cbb2f4399e2d8cb494c49ebc7e84c038587257c1c8c047830c598b3bab7c",
         intel: "7f6d4dac55f47b8ac93267c1d18da74eae59c6db8fe42033d28b26e78457ea34"

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
