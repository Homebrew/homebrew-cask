cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.2.2.71-stable"
  sha256 arm:   "46290ab7f871d1b1b9115680cbf92282505a4494d80f7ad61190536397a80fb6",
         intel: "de1d0a2f0fd7f1fc481884184991e2df54dd3acae60ce4068611752f86c10f38"

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
