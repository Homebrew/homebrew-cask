cask "codeql" do
  version "2.11.5"
  sha256 "3827940dfc8eb04269e981d83d8db7e7d758aa6b49e3f8da6d22528c6f1bb835"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
