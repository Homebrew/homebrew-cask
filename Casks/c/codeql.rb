cask "codeql" do
  version "2.14.4"
  sha256 "2916ad4d27dde3a7a985b47abd386993da8531f40857f89bb6bd1426da9a9e5e"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
