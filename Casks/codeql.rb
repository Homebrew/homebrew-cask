cask "codeql" do
  version "2.7.5"
  sha256 "59f7a726fec0e12609fdca89d1261430eab7ae7a4ac1fdc9bbc2ecc15c374e49"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
