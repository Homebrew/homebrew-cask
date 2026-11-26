cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.11.3.10-stable"
  sha256 arm:   "7a018879e198d3361db45b85dd1b20c9c8073109f8885c8de252a33e0617a180",
         intel: "424faf6ec7ed0be1c20a5ffccebd48a75b322005853c5080c8a5d45cbef7121c"

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
