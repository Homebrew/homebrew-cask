cask "dearsql" do
  version "0.4.3"
  sha256 "69d88208fd2cb7a2e9c7c5dcc585714ce174c73caf1e0e67eb65bb7d8f9cf430"

  url "https://github.com/dunkbing/dearsql/releases/download/v#{version}/DearSQL.dmg",
      verified: "github.com/dunkbing/dearsql/"
  name "DearSQL"
  desc "Native desktop SQL client for multiple databases"
  homepage "https://dearsql.dev/"

  livecheck do
    url "https://dearsql.dev/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "DearSQL.app"

  zap trash: [
    "~/Library/Application Support/DearSQL",
    "~/Library/Caches/DearSQL",
    "~/.dearsql",
  ]
end
