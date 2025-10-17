cask "codeql" do
  version "2.23.3"
  sha256 "37d8e06c3fe21f0a61283c6e95458440cecfef681da539375a8fd2614668b338"

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
