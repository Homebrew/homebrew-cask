cask "codeql" do
  version "2.8.4"
  sha256 "fb8a2562bbca9601a6cf4bbad079abdd6b067075d6816c20698cd68f8810e642"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
