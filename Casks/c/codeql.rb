cask "codeql" do
  version "2.23.9"
  sha256 "2c671f60e277e725b4cb2245f754b25bf2d749bb236a970b110f09a34bf85df0"

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
end
