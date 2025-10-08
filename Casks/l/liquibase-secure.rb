cask "liquibase-secure" do
  version "5.0.1"
  sha256 "5d5abaed04b8b1b413208413cfac5e36aaf009262159acfd7c2bf78baacd893d"

  url "https://package.liquibase.com/downloads/secure/homebrew/liquibase-secure-#{version}.tar.gz"
  name "Liquibase Secure"
  desc "Database change management tool (Secure)"
  homepage "https://www.liquibase.com/"

  livecheck do
    skip "Requires manual review for updates"
  end

  depends_on formula: "openjdk"

  binary "liquibase"

  caveats do
    <<~EOS
      You should set the environment variable LIQUIBASE_HOME to
        $(brew --prefix)/Caskroom/liquibase-secure/#{version}
    EOS
  end

  # No zap stanza required
end
