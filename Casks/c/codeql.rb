cask "codeql" do
  version "2.21.0"
  sha256 "27895f85ec54e3e7b514a48fc0e379d0f3c897936ba5b5a3bd3f0d69b388eb1a"

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
