cask "codeql" do
  version "2.12.2"
  sha256 "b5a48cc23acfd2d85497802d334f1f567f07de0199304aca53814808cb1c6bbb"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
