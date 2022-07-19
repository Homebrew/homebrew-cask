cask "codeql" do
  version "2.10.1"
  sha256 "6da981df6208d1dde1af65b5adb1dfcc2fb42efcdfc2927e1b17603b89ce1959"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
