cask "codeql" do
  version "2.24.1"
  sha256 "131f1560c18fccdb56c63dfde427b60c7bdeb1420c80cd4643032b028e0b89ce"

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
