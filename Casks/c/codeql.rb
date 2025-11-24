cask "codeql" do
  version "2.23.6"
  sha256 "9aaae1731179f1ea9d0d5ed603ca5e4a84cb7842dff8971d441569d65bee7f30"

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
