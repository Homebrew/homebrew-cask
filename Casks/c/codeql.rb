cask "codeql" do
  version "2.26.3"
  sha256 "68fb8778c78aabfdcebed6166a7e57caadf8535b26396528b7cd4efcae36a858"

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
