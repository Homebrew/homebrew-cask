cask "codeql" do
  version "2.14.6"
  sha256 "81f895f08db87e00f345446918436006c596a91348da87b0c6330c0ae40d215d"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
