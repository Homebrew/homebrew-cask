cask "codeql" do
  version "2.13.1"
  sha256 "b71317ed8e7421264c32616c89dbad8db1d482b2ab6aed70e9be7c705bdf5628"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
