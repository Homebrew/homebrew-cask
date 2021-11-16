cask "codeql" do
  version "2.7.1"
  sha256 "c9d8b025fc1dc8bd991435218708b8b007a325e3f2bd51af8e45039ae01b7f10"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
