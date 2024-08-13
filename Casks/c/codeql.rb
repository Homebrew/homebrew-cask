cask "codeql" do
  version "2.18.2"
  sha256 "d988729e3aa3922514be55b675e3acb0999af75db87ed606eb34f7a6e95848e1"

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
