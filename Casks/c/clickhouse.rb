cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.10.1.2812-stable"
  sha256 arm:   "15e88d1fa7d25e26b0c7028d72a99a793fe679de7524cea1cc1ad4e6ee023230",
         intel: "8b5f32bd8b9bdb0fcd24119f697e21825c5250b53a09c333cdefe480c9f74fb2"

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
