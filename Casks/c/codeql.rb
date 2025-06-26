cask "codeql" do
  version "2.22.1"
  sha256 "3b90cd8e7159b241c41685f6325d6ab5669d3ce4c19b1c12bd02687744c946f9"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
