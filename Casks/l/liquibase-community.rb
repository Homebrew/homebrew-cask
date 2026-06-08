cask "liquibase-community" do
  version "5.0.3"
  sha256 "865aab391be9cbe3fee22461392d5d29aa76652596598b14700a3f5f05c9e2b7"

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
