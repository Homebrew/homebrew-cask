cask "manyverse" do
  version "0.2207.5-beta"
  sha256 "f946b1b69ae11fe200473143ef5ff1daa8cbc292a8b27a7a5bd3b6382ac40793"

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
