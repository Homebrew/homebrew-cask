cask "manyverse" do
  version "0.2203.21-beta"
  sha256 "b3515036da272508dacf55746646c28c52285b43d817a74421034e9de996974b"

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
