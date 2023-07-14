cask "codeql" do
  version "2.14.0"
  sha256 "1da5e447b22772bdc22e08cb7865a503977b87f0f9457f7c0689efbcd46e55c3"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
