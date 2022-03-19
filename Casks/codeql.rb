cask "codeql" do
  version "2.8.3"
  sha256 "5773a36c273e210a96f0bd8977d4b76a3a6835aa8bc5df4b59394f3518cc7a77"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
