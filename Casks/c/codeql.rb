cask "codeql" do
  version "2.17.0"
  sha256 "dc60af9dd00a4377b4c72156998e10a02cde8b5f0ba7e1056b0a1834b74c87a2"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
