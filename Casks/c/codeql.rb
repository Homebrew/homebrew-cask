cask "codeql" do
  version "2.24.0"
  sha256 "dc6c4a67855fb5863cd60f838e6981597f8e232b7342a5c7fa07b6f7c8bb08b3"

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
