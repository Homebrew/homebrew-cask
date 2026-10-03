cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.9.9.28-stable"
  sha256 arm:   "42c8fb45b743bcab7896d36b2a097423b2b880e90313597d271441c09a67de85",
         intel: "eb01882ed29585a8b6b94738bfb70a3cc49a0c95874b03154ba5f19e1aeda68d"

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
