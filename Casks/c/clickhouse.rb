cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.9.2.8-stable"
  sha256 arm:   "b514dcf0e81a55b2e4a87640b29d661d2278b09e0528bc81b4db9788e125b3e4",
         intel: "4e3dfda60c21aada4ae181ff6a6ee0049f4e77d68f9be6c35e211839a6625d10"

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
