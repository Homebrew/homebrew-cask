cask "gather" do
  version "0.3.1"
  sha256 "26ea3843a23b7b76c76525270f02f1971c394c28b072391c766dfab9fc14f6d3"

  url "https://github.com/gathertown/gather-town-desktop-releases/releases/download/v#{version}/Gather-#{version}-mac.zip",
      verified: "github.com/gathertown/gather-town-desktop-releases"
  name "Gather Town"
  desc "Virtual video-calling space"
  homepage "https://gather.town/"

  app "Gather.app"

  zap trash: "~/Library/Application Support/Gather"
end
