cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.9.14.10-stable"
  sha256 arm:   "f756ef0db42a02c223eb2ec8e1740ede188479b24410cfe0bb1d0071021acb04",
         intel: "458b1aa801fa5e60e85c9b565726ca94e94be495bf5c538fa4f309b1f410796e"

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
