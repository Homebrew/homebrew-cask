cask "codeql" do
  version "2.9.0"
  sha256 "a8c6ee9ae462dd001b76f7cef4fe57a37255944d6cf4e832f6f14c9ea60a8f89"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
