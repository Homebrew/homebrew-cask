cask "codeql" do
  version "2.25.4"
  sha256 "5a22bcb01b49fe5ad5546fdc5cac46963a0857e2f00d93e5eeeed46edd92614e"

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
