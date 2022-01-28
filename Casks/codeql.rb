cask "codeql" do
  version "2.7.6"
  sha256 "29810a155005df77470a6df9b0a8f3cef3e9a0c6af786c3cf2f7d277298c285f"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
