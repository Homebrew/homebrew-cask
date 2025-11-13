cask "codeql" do
  version "2.23.5"
  sha256 "9bb4a253ca864b650bce10a830ef4ad916a512aae3197c0dbbb5f7be600b35cb"

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
