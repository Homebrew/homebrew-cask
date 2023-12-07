cask "clickhouse" do
  arch arm: "-aarch64"

  version "23.11.1.2711-stable"
  sha256 arm:   "8a775b8ab9b02169ea0870032b88de20ee7b5e671f57105c1411e366432c1d2f",
         intel: "e3b0470a7b8ae0a950e1ec435dc29dedf915394b7f65589ffd835db818e315b7"

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
