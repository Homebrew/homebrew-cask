cask "manyverse" do
  version "0.2307.3-beta"
  sha256 "a8fdaa0ea499a4156e58d5ca3eec1d4659e0b228f428cbfc0fb53def41947a78"

  url "https://github.com/staltz/manyverse/releases/download/v#{version}/Manyverse-#{version}.dmg",
      verified: "github.com/staltz/manyverse/"
  name "Manyverse"
  desc "Social network built on the peer-to-peer SSB protocol"
  homepage "https://www.manyver.se/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+-beta)/i)
    strategy :github_latest
  end

  app "Manyverse.app"

  zap trash: "~/Library/Application Support/manyverse"
end
