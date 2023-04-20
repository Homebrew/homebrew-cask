cask "manyverse" do
  version "0.2304.3-beta"
  sha256 "88ec65253ea60ea4e6420ec4f4d58433d86af2c9d2d0e25a242a312a715c1f83"

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
