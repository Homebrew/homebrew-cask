cask "codeql" do
  version "2.19.0"
  sha256 "f2f1ad57c59a20b529218e9c5465900e51cc98c6b02f2063b757435c3612533d"

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
