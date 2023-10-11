cask "codeql" do
  version "2.15.0"
  sha256 "5b7424c716a8a154c30f2fecb5cf55e10fb7b3e03e33189aed64e33c4304f6a7"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
