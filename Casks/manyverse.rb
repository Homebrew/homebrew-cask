cask "manyverse" do
  version "0.2212.5-beta"
  sha256 "f68e5e56063c6665487b6f340087fa2cd42b89b0154c3f2bb94856116d29df92"

  url "https://github.com/staltz/manyverse/releases/download/v#{version}/Manyverse-#{version}.dmg",
      verified: "github.com/staltz/manyverse/"
  name "Manyverse"
  desc "Social network built on the peer-to-peer SSB protocol"
  homepage "https://www.manyver.se/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:-beta)?)$/i)
  end

  app "Manyverse.app"

  zap trash: "~/Library/Application Support/manyverse"
end
