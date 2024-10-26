cask "exist-db" do
  version "6.3.0"
  sha256 "4cb5858e2f1f0e5b8e74217c9cea7d85c31292120883e672d87e636374b46412"

  url "https://github.com/eXist-db/exist/releases/download/eXist-#{version}/eXist-db-#{version}.dmg",
      verified: "github.com/eXist-db/exist/"
  name "eXist-db"
  desc "Native XML database and application platform"
  homepage "https://exist-db.org/exist/apps/homepage/index.html"

  app "eXist-db.app"

  zap trash: "~/Library/Application Support/org.exist"

  caveats do
    depends_on_java "8"
    requires_rosetta
  end
end
