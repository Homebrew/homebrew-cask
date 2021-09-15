cask "neo4j" do
  # NOTE: "4" is not a version number, but an intrinsic part of the product name
  version "1.4.8"
  sha256 "9f18b6a1f554e4e0cbd33f20f224e26205e51b77542dab72632a64917aba7414"

  url "https://neo4j.com/artifact.php?name=neo4j-desktop-#{version}.dmg"
  name "Neo4j Desktop"
  desc "Developer IDE or Management Environment for Neo4j instances"
  homepage "https://neo4j.com/download/"

  livecheck do
    url "https://neo4j.com/download-center/#desktop"
    strategy :page_match
    regex(%r{href=.*?/neo4j-desktop/.*?flavour=osx.*?release=(\d+(?:\.\d+)*)}i)
  end

  depends_on macos: ">= :yosemite"

  app "Neo4j Desktop.app"
end
