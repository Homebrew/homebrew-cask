cask "neo4j-desktop" do
  # NOTE: "4" is not a version number, but an intrinsic part of the product name
  version "2.1.3"
  sha256 "b17d9edc30e71b36e15ee54a57e695e8e20a62a66fa3867859a16695bfc84158"

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
