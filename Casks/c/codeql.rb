cask "codeql" do
  version "2.17.5"
  sha256 "1251734e9307ae5bfe7c680f7b0cc947f3f5c447bcc0beed43b68e4d28da8861"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
