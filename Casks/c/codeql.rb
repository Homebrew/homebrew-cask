cask "codeql" do
  version "2.18.0"
  sha256 "31a108225b3ccde5c38d2900c9d1c8b067c78d3e81c0684cde1f1e12c96d6154"

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
