cask "codeql" do
  version "2.12.5"
  sha256 "970b3c8a3f0624da26e79eb5c4267f24f67d45599be2f603d0634bf9c753f14d"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
