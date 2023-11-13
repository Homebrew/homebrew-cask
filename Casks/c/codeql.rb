cask "codeql" do
  version "2.15.2"
  sha256 "a0a5070cc05cc74b44ac4b4d125f410205fc6169b4796fa3b5beca449670daf1"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
