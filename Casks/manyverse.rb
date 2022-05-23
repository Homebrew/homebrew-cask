cask "manyverse" do
  version "0.2205.4-beta"
  sha256 "b90e6b18bcbc890b48692a7897456fc50e7d8074864e05d727dd0e2fc26c5738"

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
