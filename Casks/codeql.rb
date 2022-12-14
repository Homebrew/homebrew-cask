cask "codeql" do
  version "2.11.6"
  sha256 "d17c59265f7b8b89e156d712a4e1c56e57f4f34f64f56648dfe4dabbdb72e062"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
