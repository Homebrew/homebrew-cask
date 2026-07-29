cask "codeql" do
  version "2.26.2"
  sha256 "c363637c914ef2dd6b0f5dddaffe7d70029787c0af52ea657a373788bb14c8a6"

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
