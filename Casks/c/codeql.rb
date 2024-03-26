cask "codeql" do
  version "2.16.6"
  sha256 "89b5efa8dfa7a1ccb2248966a2db5df4bc7737a5266de32dbc2abbc05137fe15"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
