cask "codeql" do
  version "2.17.2"
  sha256 "ca7925d06922694d4d5cc092987f9615c72aa8ee1b8df33242ba6e7894348cc6"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
