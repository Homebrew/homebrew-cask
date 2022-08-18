cask "codeql" do
  version "2.10.3"
  sha256 "9db4ac1b6a8e35228ff46e896d8f94f1360b46f824fc8dce172ade2ab1ce2e75"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
