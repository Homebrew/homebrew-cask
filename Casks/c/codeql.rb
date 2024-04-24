cask "codeql" do
  version "2.17.1"
  sha256 "f4922366d39bd562cd4a953f070be1f6a6b787b2b7b3d96584d2993685b1ea7e"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
