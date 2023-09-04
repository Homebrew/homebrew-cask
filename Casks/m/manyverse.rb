cask "manyverse" do
  version "0.2309.4-beta"
  sha256 "66c13ea9583d6a7e979c53a41d7190f6d0dee4aae489e401b4d300727ccba9d9"

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
