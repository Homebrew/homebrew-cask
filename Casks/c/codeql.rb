cask "codeql" do
  version "2.27.2"
  sha256 "33c8f7097a1ccd6d8362ff1ee04d66eb4a309002ec6bffa256030d3881f706f2"

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
