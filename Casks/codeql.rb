cask "codeql" do
  version "2.11.3"
  sha256 "82f21d034e6c84b527b2af32e84cfacfc58296aed30d717657a6347cc24ce9df"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
