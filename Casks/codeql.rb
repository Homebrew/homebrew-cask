cask "codeql" do
  version "2.12.3"
  sha256 "7ece9e762723b85986cefd6599b74c57becfe7510d8bd03047a801e48859723b"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
