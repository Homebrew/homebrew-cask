cask "codeql" do
  version "2.12.4"
  sha256 "680cb8d33f4745946086c43b4fe5b8de91c1ec6a2b9a1403becd1ff8daf832bf"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
