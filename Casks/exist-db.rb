cask "exist-db" do
  version "5.3.0"
  sha256 "8c51155ab84b5eb52b8cbaebf4dd7be5d94c55ec08087793d1c531049377f93a"

  url "https://github.com/eXist-db/exist/releases/download/eXist-#{version}/eXist-db-#{version}.dmg",
      verified: "github.com/eXist-db/exist/"
  name "eXist-db"
  desc "Native XML database and application platform"
  homepage "https://exist-db.org/exist/apps/homepage/index.html"

  app "eXist-db.app"

  zap trash: "~/Library/Application Support/org.exist"

  caveats do
    depends_on_java "8"
  end
end
