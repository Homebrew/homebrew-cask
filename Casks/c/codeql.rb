cask "codeql" do
  version "2.14.5"
  sha256 "0712e3edb3992cac7455911d78ebad74cea4eecc0a7781b4709a9ec95edf7276"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
