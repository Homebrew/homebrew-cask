cask "codeql" do
  version "2.19.1"
  sha256 "966f189499284f5632551eb3caddd931bba14d7be8e6514fb6d5ac5cc4c5d16c"

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
