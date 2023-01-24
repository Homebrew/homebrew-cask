cask "codeql" do
  version "2.12.1"
  sha256 "92b04a99b04221ef16669d5df6d3b610fb256d258ebc1c64a9e8d8f8f2f72dda"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
