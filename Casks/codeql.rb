cask "codeql" do
  version "2.12.7"
  sha256 "332f3b7a0ce2aa96a37651fb17bc1979fe5b8cc0e06f16bf8913d60a4701a2b1"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
