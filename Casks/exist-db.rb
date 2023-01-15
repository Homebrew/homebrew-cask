cask "exist-db" do
  version "6.1.0"
  sha256 "c3beebdfb20a1e3cd0314eeeb595582d5607ff246c95be33bb2dd69c70f4f1f1"

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
