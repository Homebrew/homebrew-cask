cask "codeql" do
  version "2.13.5"
  sha256 "105f7cc0b64d9e7d8c195d5188066a308ccd98d5d0a11433d15e884855322031"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
