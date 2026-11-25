cask "neo4j-desktop" do
  # NOTE: "4" is not a version number, but an intrinsic part of the product name
  version "2.3.2"
  sha256 "8b97ce56121417c75cb4bddaca95f644fdcceee8ee1c6b81a02364f3d0af23fd"

  url "https://dist.neo4j.org/neo4j-desktop-#{version.major}/mac/neo4j-desktop-#{version}-universal.dmg"
  name "Neo4j Desktop"
  desc "Developer IDE or Management Environment for Neo4j instances"
  homepage "https://neo4j.com/download/"

  livecheck do
    url "https://neo4j.com/deployment-center/"
    regex(%r{href=.*?/neo4j-desktop/.*?flavour=osx.*?release=(\d+(?:\.\d+)+)}i)
  end

  depends_on macos: :ventura

  app "Neo4j Desktop #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.neo4j.neo4j-desktop-2.sfl*",
    "~/Library/Application Support/com.Neo4j.Relate",
    "~/Library/Application Support/Neo4j Desktop",
    "~/Library/Caches/com.Neo4j.Relate",
    "~/Library/Logs/Neo4j Desktop",
    "~/Library/Preferences/com.neo4j.neo4j-desktop-2.plist",
    "~/Library/Preferences/com.neo4j.neo4j-desktop.plist",
    "~/Library/Saved Application State/com.neo4j.neo4j-desktop.savedState",
  ]
end
