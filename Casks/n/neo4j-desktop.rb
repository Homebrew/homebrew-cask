cask "neo4j-desktop" do
  # NOTE: "4" is not a version number, but an intrinsic part of the product name
  version "2.1.1"
  sha256 "1fb305456ee3f956b1d96d3a3c0779973cd3bc92781329569b72b7ba3b181c14"

  url "https://dist.neo4j.org/neo4j-desktop-#{version.major}/mac/neo4j-desktop-#{version}-universal.dmg",
      verified: "dist.neo4j.org/"
  name "Neo4j Desktop"
  desc "Developer IDE or Management Environment for Neo4j instances"
  homepage "https://neo4j.com/download/"

  livecheck do
    url "https://neo4j.com/deployment-center/"
    regex(%r{href=.*?/neo4j-desktop/.*?flavour=osx.*?release=(\d+(?:\.\d+)+)}i)
  end

  depends_on macos: ">= :monterey"

  app "Neo4j Desktop #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/com.Neo4j.Relate",
    "~/Library/Application Support/Neo4j Desktop",
    "~/Library/Caches/com.Neo4j.Relate",
    "~/Library/Logs/Neo4j Desktop",
    "~/Library/Preferences/com.neo4j.neo4j-desktop.plist",
    "~/Library/Saved Application State/com.neo4j.neo4j-desktop.savedState",
  ]
end
