cask "codeql" do
  version "2.10.2"
  sha256 "dfc7a14062217e7a29f9ef6aba3a51e401803195f60e2885b5bd40df2ec085b1"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
