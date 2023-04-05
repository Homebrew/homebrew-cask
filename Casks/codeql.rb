cask "codeql" do
  version "2.12.6"
  sha256 "1b44472faeb54abe8e7badc5a858b5b0ddb8283121ded27237a11cce829e575c"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
