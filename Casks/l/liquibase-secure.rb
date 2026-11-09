cask "liquibase-secure" do
  version "6.0.1"
  sha256 "f4e399709059968f174f44535ef657029075aafd53e09690d09afba7b0af30e6"

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
