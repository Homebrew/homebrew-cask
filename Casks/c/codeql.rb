cask "codeql" do
  version "2.14.3"
  sha256 "a959b2ac3175bb6fc3d430049a204b9ec71b7b731d8c02d643f32a9e55f37e39"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
