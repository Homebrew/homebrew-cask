cask "liquibase-secure" do
  version "5.2.0"
  sha256 "1b7c52f0eb3bd546c7a43a39411bbb90027c4f418e653c914057355e8d9b3d9b"

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
