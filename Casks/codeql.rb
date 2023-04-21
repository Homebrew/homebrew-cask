cask "codeql" do
  version "2.13.0"
  sha256 "6ec2e635d73638a17e69569a129b9c0ec20250ba8b9bc27572ac437b201947cc"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
