cask "codeql" do
  version "2.9.3"
  sha256 "cadd1dcced83481f2c278350eb25745d28e96df344dccc9d39e759af017a0ab5"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
