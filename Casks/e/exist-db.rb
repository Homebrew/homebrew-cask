cask "exist-db" do
  version "6.4.1"
  sha256 "22873e01f000466433e3cf4b91403f78e0285848562585ba4c3eab2c2b63d7d5"

  url "https://github.com/eXist-db/exist/releases/download/eXist-#{version}/eXist-db-#{version}.dmg",
      verified: "github.com/eXist-db/exist/"
  name "eXist-db"
  desc "Native XML database and application platform"
  homepage "https://exist-db.org/exist/apps/homepage/index.html"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "eXist-db.app"

  zap trash: "~/Library/Application Support/org.exist"

  caveats do
    depends_on_java "8"
  end
end
