cask "codeql" do
  version "2.18.1"
  sha256 "e0d9fde4a56c6c21038c4b37e084d6405efeb8167469f0dbe9e021462854e250"

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
