cask "liquibase-secure" do
  version "5.0.3"
  sha256 "274b84056a8350ec25fbcf35410385bc0451f3e986ee5f8ec523b1ec9c1f4fcf"

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
