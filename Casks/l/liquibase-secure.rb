cask "liquibase-secure" do
  version "6.0.2"
  sha256 "1d4349626836f537d8f086736a1b08d5d9567396951ec39b3f351fd4667b2a85"

  url "https://package.liquibase.com/downloads/secure/homebrew/liquibase-secure-#{version}.tar.gz"
  name "Liquibase Secure"
  desc "Database change management tool"
  homepage "https://www.liquibase.com/liquibase-secure"

  livecheck do
    url "https://repo.liquibase.com/releases/secure/"
    regex(%r{href=["']?[^"' >]*?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "liquibase"

  zap :not_required

  caveats do
    depends_on_java "17+"
  end
end
