cask "codeql" do
  version "2.25.5"
  sha256 "1b3f785a8c8746668c5575bf6ffab4ec46e9207519e8aab82babb2a21beaf538"

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
