cask "codeql" do
  version "2.26.1"
  sha256 "61c5d2b53e1cd8ee2bd57c31a55c57af53ffaafdf19c46d2341704c6cacf35d3"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
