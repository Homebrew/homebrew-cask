cask "codeql" do
  version "2.18.3"
  sha256 "92f2c612d16c1215b87fdfc02b2ef188c22239e12a9effaa82ae294d23386777"

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
