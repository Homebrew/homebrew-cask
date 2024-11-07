cask "codeql" do
  version "2.19.3"
  sha256 "ce8e4337c669f539edc8d717cc477870413f834f46dd93804e6986129c5adecc"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
