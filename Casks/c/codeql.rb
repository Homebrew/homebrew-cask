cask "codeql" do
  version "2.17.6"
  sha256 "9ed3b712864a8e043050df8f6f2489afb463a88e5f64865f40aed9fd0b76b6df"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
