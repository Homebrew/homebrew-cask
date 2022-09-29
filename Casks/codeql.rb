cask "codeql" do
  version "2.11.0"
  sha256 "9485e4eb0d831ad31439ff2e73f5afb6e6e76c8373de4d58b08ca4e496c42a01"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
