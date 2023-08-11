cask "codeql" do
  version "2.14.2"
  sha256 "48404f68b5631216ec47b4a6cb3c759acd5182d56140155db296336f6f55a666"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
