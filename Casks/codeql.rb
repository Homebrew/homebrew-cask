cask "codeql" do
  version "2.8.5"
  sha256 "eff5e16b68382f2b918a4be03a9701df70b68b3a1db394aba0edd61809e11f79"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
