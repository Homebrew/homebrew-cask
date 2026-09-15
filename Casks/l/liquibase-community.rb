cask "liquibase-community" do
  version "5.0.4"
  sha256 "bb08638d70dddd6af8cca6e033148576f8214b5996831b1f8864eb3528f4cfce"

  url "https://package.liquibase.com/downloads/oss/homebrew/liquibase-#{version}.tar.gz"
  name "Liquibase Community"
  desc "Library for database change tracking"
  homepage "https://www.liquibase.com/community"

  livecheck do
    url "https://github.com/liquibase/liquibase"
    strategy :github_latest
  end

  binary "liquibase"

  caveats do
    depends_on_java "17+"
  end

  # No zap stanza required
end
