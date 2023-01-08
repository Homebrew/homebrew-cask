cask "manyverse" do
  version "0.2301.6-beta"
  sha256 "57e986f6bc1f765fa5c77109dc21e5c78cd635d89396928b54ba28cd14c0c987"

  url "https://github.com/staltz/manyverse/releases/download/v#{version}/Manyverse-#{version}.dmg",
      verified: "github.com/staltz/manyverse/"
  name "Manyverse"
  desc "Social network built on the peer-to-peer SSB protocol"
  homepage "https://www.manyver.se/"

  livecheck do
    url :url
    regex(%r{href=["']?[^"' >]*?/tag/v?(\d+(?:\.\d+)+-beta)["' >]}i)
    strategy :github_latest
  end

  app "Manyverse.app"

  zap trash: "~/Library/Application Support/manyverse"
end
