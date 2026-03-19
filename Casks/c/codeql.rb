cask "codeql" do
  version "2.25.0"
  sha256 "ae84b008bb86a64bfb5167612ffba07366b5cec56515cc3a9ac818ba1cb4eaed"

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
