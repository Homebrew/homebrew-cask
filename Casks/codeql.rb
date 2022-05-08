cask "codeql" do
  version "2.9.1"
  sha256 "39e9a83d89fb5ca20376357828fc97848ca9239951f34451c4bd603f014a6a97"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
