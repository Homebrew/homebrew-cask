cask "manyverse" do
  version "0.2310.3-beta"
  sha256 "6f848fdf3fa50093c68287b07df324194de03036a4e38f93ad87f03503088b12"

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
