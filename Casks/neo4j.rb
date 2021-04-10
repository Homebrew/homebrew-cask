cask "neo4j" do
  # NOTE: "4" is not a version number, but an intrinsic part of the product name
  version "1.3.11"
  sha256 "5d60752d712f0e708cdf94d68c287508967ff79f8fd89bcca593d49a3982cc86"

  url "https://neo4j.com/artifact.php?name=neo4j-desktop-#{version}.dmg"
  name "Neo4j Desktop"
  homepage "https://neo4j.com/download/"

  livecheck do
    url "https://neo4j.com/download/"
    strategy :page_match
    regex(%r{href=.*?/artifact.php?name=neo4j-desktop-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Neo4j Desktop.app"
end
