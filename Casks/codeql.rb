cask "codeql" do
  version "2.10.5"
  sha256 "8a3d047baf16e5c97f91c4ecaf621db87bdd2f1ed5f04d91b396aef4bf6dd98d"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
