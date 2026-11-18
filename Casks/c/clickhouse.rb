cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.10.6.18-stable"
  sha256 arm:   "5d37b480c4bb8e072e2d3a221fdba4831127456dce12ceb73ec6a35b8720f317",
         intel: "3edb3b6286f56556bfcd87e5576393c830a8a3f137013737f568786d160b15bb"

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
