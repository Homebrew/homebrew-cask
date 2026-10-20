cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.9.23.15-stable"
  sha256 arm:   "dd34b5657b72eacf7e4c80950d1991389a946b9ed269983cb77fb1d27093e5f7",
         intel: "7f030e6f74bc7d7fea5ddfb64a867eaeba447ab11a7985f147e21188aba085dd"

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

  # No zap stanza required
end
