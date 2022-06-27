cask "codeql" do
  version "2.10.0"
  sha256 "5cf5309c695bc05f714145ce1f7fecea2899e547932ebc7434207dcf62555d2a"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
