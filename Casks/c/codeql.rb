cask "codeql" do
  version "2.26.4"
  sha256 "b65e8c65fc66ffca1976f73268ffe2cacaf91c4941efab22b0f2a189787bb899"

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
