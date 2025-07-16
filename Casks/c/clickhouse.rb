cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.6.4.12-stable"
  sha256 arm:   "e579fe3ed90c302ae0a7816b20bd0daebfd9b28ed898127345e8efc07468265f",
         intel: "e4b850ae58e3660309958f33d34b2957e3b178a31c1b56315172a4024a297e33"

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
