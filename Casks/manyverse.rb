cask "manyverse" do
  version "0.2303.3-beta"
  sha256 "aec4cbe770b04b5cf2c622d87a0d095eab98b8272b1b24607d973d811a8d930e"

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
