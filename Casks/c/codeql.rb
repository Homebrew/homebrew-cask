cask "codeql" do
  version "2.15.3"
  sha256 "851828ead24925ed0d3685fa5216ba419336e6a553ea6d8073999ecb2a6ef482"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
