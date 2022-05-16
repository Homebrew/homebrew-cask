cask "codeql" do
  version "2.9.2"
  sha256 "474aa509f10bb26c621ccf78c75f938bec1db96f5851c0d9285491e2e08c6e8e"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
