cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.10.5.57-stable"
  sha256 arm:   "1952c315aca2a0c051e239bc048027c7209cf3526e1533c075d448ae62597bee",
         intel: "c923aa982e9aa4708e5ac84161e92d5a57ee364693a52abe1c366226efcabb2b"

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
