cask "codeql" do
  version "2.23.8"
  sha256 "dd2cfc4bb26be9e7de4ae71d31dab83fdb1578c595b126445a537ea8100d3eb6"

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
