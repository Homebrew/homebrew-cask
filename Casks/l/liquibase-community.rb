cask "liquibase-community" do
  version "5.0.2"
  sha256 "10356bea9dc57868a57fc3af88ad471f5027d67ad1f5fc88a9c2221401cbae23"

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
