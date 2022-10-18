cask "codeql" do
  version "2.11.1"
  sha256 "207eb2bad8c65c3e5427ab3d05ce012f52f1d5c960e7bb58ba50117fdd620768"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
