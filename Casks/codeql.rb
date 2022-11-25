cask "codeql" do
  version "2.11.4"
  sha256 "d2af01639c3823249b111696f79dc611e08a7b1799b034b3cb304fa21f09bed9"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
