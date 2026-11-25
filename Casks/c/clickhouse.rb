cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.11.2.4-stable"
  sha256 arm:   "7cfecdf2ba8fca0e5ffe48add69572258524c76afe144ac4f2a3a428c7b95cd1",
         intel: "b6f931b92f0cbed11fe09a03c5af1cc3eaf3c9df0ef4cfb718120f27ed5fc014"

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
