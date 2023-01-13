cask "codeql" do
  version "2.12.0"
  sha256 "2131c01bfade7cabf82f109d49b3b8c7bab8d696c1b7a35a330f9e7aa5d47583"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
