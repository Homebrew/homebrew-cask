cask "codeql" do
  version "2.21.3"
  sha256 "5b66162fa1b2543a0578f82b88f98c95e42677c3d5e030c90f47063e12172586"

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
