cask "codeql" do
  version "2.7.3"
  sha256 "ab0ae8b3caeb1145af8de117136ae6aeeedc5d88f0862b519d8d9ba79f8e9f9d"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
