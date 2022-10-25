cask "codeql" do
  version "2.11.2"
  sha256 "bef342dfcf680a37583af4778621ae93215362d1eafee28ab062b920e58700c0"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"
end
