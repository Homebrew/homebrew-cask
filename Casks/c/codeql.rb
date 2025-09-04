cask "codeql" do
  version "2.23.0"
  sha256 "5fdfedcc0f2a012a75f4a1ad9b9357ab844fd47657a3fff7d89b496aff4f04ab"

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
