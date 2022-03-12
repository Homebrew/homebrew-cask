cask "codeql" do
  version "2.8.0"
  sha256 "39de8d8dca05820744ff27510af7bd9ef1a3150c0512b150c9fd808c72e01d43"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
