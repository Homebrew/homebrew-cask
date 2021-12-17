cask "codeql" do
  version "2.7.2"
  sha256 "9f19405cf7a6020bc8176751b58364045068bf35b448f17c248c10bc35a980f3"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
