cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.10.7.24-stable"
  sha256 arm:   "55272492ad389cf2c221e1356a6cc74a99dba262e70ab00bfa776f969d10c182",
         intel: "876d03cff5161f7ad4ac1882ba9e5caf6aeb10be1e896c29655ef65bfe4e4ccd"

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
