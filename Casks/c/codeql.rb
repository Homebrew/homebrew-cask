cask "codeql" do
  version "2.14.1"
  sha256 "3078e2889350b347b013590d0e1f8e58a10a7b352c3e021299e63f430af01796"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
