cask "codeql" do
  version "2.23.1"
  sha256 "c2cae38a3531e875a498596785abd555da6fa97bed2f4d76c49af5893a3be571"

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
