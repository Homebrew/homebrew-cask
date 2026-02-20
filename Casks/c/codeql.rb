cask "codeql" do
  version "2.24.2"
  sha256 "960de1aebf12a61cb6b7a4833a142840b3f95e4da369de055022b7068e79f224"

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
