cask "manyverse" do
  version "0.2302.2-beta"
  sha256 "020f7a0dc6aab62b12e6912343889f2301d86d40a9ec80e046c991d516e773ec"

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
