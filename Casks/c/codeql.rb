cask "codeql" do
  version "2.23.2"
  sha256 "03bb12aa4b24fc57c92728a6dd5fae44f0f2055072ae00d5a37e73e43e24cbf6"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
