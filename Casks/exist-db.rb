cask "exist-db" do
  version "5.2.0"
  sha256 "16d20b665a68ba30090dbec1f47ad3ec26a73781af965039fb0790e9a5874142"

  # bintray.com/artifact/download/existdb/ was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/existdb/releases/eXist-db-#{version}.dmg"
  appcast "https://github.com/eXist-db/exist/releases.atom"
  name "eXist-db"
  desc "Native XML database and application platform"
  homepage "https://exist-db.org/exist/apps/homepage/index.html"

  app "eXist-db.app"

  zap trash: "~/Library/Application Support/org.exist"

  caveats do
    depends_on_java "8+"
  end
end
