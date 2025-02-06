cask "codeql" do
  version "2.20.4"
  sha256 "ba7be8a3f8ae755d65eb2ee1b6eea9d122bd5968079122c3eb4d6933e8a28391"

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
