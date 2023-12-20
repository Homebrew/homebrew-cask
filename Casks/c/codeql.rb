cask "codeql" do
  version "2.15.5"
  sha256 "2349fb7dbd6193cc9f9d5c9226472a6c6b8e58eef39ada17364948f27a735fe8"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
