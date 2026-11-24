cask "liquibase-secure" do
  version "6.0.3"
  sha256 "dca5e957abb730660561c0debf3e23565fd161b584cfe02ad64c492a2a85fa5d"

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
