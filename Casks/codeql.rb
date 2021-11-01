cask "codeql" do
  version "2.7.0"
  sha256 "ecfee5d2b1ee1ee0c8ceeadde35ab6245c4f7919cc19778381ec8cf9a5b187f8"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
