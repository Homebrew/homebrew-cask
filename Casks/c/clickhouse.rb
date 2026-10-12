cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.9.16.11-stable"
  sha256 arm:   "1c2f4d1687118e0ca1d6ce86c662883fe856320c9e97af24654f81f1900c9398",
         intel: "14c7779e46430e44de7d82b9b43afdd3455955f93655767dee1e77a5c50b6b8c"

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
