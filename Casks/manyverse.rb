cask "manyverse" do
  version "0.2202.7-beta"
  sha256 "7b10ff5f1216e845dc294727e37517bfed6d41ce7a5421ca4f1180f87562c655"

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
