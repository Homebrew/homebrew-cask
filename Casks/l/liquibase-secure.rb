cask "liquibase-secure" do
  version "5.2.1"
  sha256 "838776e4656de1c6a9d4817ba47f7e6f96c23b76b5a8964298d99a14c376106d"

  url "https://package.liquibase.com/downloads/secure/homebrew/liquibase-secure-#{version}.tar.gz"
  name "Liquibase Secure"
  desc "Database change management tool"
  homepage "https://www.liquibase.com/liquibase-secure"

  livecheck do
    url "https://repo.liquibase.com/releases/secure/"
    regex(%r{href=["']?[^"' >]*?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "liquibase"

  caveats do
    depends_on_java "17+"
  end

  # No zap stanza required
end
