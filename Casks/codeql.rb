cask "codeql" do
  version "2.13.3"
  sha256 "889560f5a5860e788eb4e5b1050e00be5c6c00fbbc5510a68ad78fe653abbfb2"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
