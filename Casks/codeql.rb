cask "codeql" do
  version "2.9.4"
  sha256 "b5394222a0e48dfa565c367918b1b0dc00b4bb69a3be1c2bdcb1d3a5ed73c490"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
