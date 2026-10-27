cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.10.2.103-stable"
  sha256 arm:   "992a893f01bba4419a50b50d2ce4557e9e0c2f9f7f3ae344dd5a4361cb81ba88",
         intel: "519cb8f3c53c96c1b7ce7ab633279bf7dc35a995c02385fa2bd99149437cc242"

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
