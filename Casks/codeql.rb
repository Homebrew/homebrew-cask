cask "codeql" do
  version "2.10.4"
  sha256 "f1b015a489b3a211b4de923ceca563706d939742282aaf98229e031c4e8e60b0"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
