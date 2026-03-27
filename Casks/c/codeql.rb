cask "codeql" do
  version "2.25.1"
  sha256 "5c1433af9723ceff1e9545757617aaf90c1ee85414180b2534368fd27fa77b96"

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
