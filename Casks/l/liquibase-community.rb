cask "liquibase-community" do
  version "5.0.1"
  sha256 "3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449"

  url "https://package.liquibase.com/downloads/oss/homebrew/liquibase-#{version}.tar.gz"
  name "Liquibase Community"
  desc "Library for database change tracking"
  homepage "https://www.liquibase.com/community"

  livecheck do
    url "https://github.com/liquibase/liquibase"
    strategy :github_latest
  end

  depends_on formula: "openjdk"

  binary "liquibase"

  caveats do
    <<~EOS
      You should set the environment variable LIQUIBASE_HOME to
        $(brew --prefix)/Caskroom/liquibase/#{version}
    EOS
  end

  # No zap stanza required
end
